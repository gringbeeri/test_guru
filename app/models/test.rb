class Test < ApplicationRecord

  ENDLESS = Float::INFINITY

  has_many :test_passages
  has_many :users, through: :test_passages
  has_many :questions
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  scope :easy, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :difficult, -> { where(level: 5..ENDLESS) }
  scope :category_tests, ->(category) { joins(:category).where('categories.title': "#{category}").order(id: :desc) }

  validates :title, presence: true, uniqueness: true
  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
