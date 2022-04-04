class Question < ApplicationRecord
  belongs_to :test
  has_many :answers
  validates :body, presence: true

  after_save :after_save_question

  private

  def after_save_question
    if self.body == 'Ruby'
      puts "Question do not create"
    end
  end
end
