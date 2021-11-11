class Test < ApplicationRecord
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
