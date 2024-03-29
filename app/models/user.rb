require 'digest/sha1'

class User < ApplicationRecord

  has_many :test_passages
  has_many :tests, through: :test_passages
  has_many :author_tests, class_name: 'Test', foreign_key: 'author_id'

  validates :email, presence: true,
                    uniqueness: true,
                    format: { with: /[^@ \t\r\n]+@[^@ \t\r\n]+[^@ \t\r\n]/, message: 'Email is incorrect'}

  has_secure_password

  def test_passage(test)
    test_passages.order(id: :desc).find_by(test_id: test.id)
  end
end
