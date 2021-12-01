class Category < ApplicationRecord
  has_many :tests

  scope :all_categories, -> { order(title: :desc) }

  validates :title, presence: true
end
