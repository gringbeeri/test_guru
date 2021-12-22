class Category < ApplicationRecord
  has_many :tests

  scope :sorting_categories, -> { order(title: :desc) }

  validates :title, presence: true
end
