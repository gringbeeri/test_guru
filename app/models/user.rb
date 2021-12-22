class User < ApplicationRecord
  has_many :passings
  has_many :tests, through: :passings
  has_many :author_tests, class_name: 'Test', foreign_key: 'author_id'

  validates :email, presence: true

  def passing_tests(level)
    Test.joins(passings: :user).where('users.id' => id, 'tests.level' => level)
  end
end
