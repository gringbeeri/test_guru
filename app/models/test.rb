class Test < ApplicationRecord
  has_many :questions
  has_many :passings
  has_many :users, through: :passings
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  def self.tests_by_category(category)
    Test.find_by_sql("
    SELECT tests.*
    FROM categories
    INNER JOIN tests
      ON tests.category_id = categories.id
    WHERE categories.title = '#{category}'
      ORDER BY id DESC;
    ")
  end
end
