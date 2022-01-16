class Answer < ApplicationRecord
  belongs_to :question

  scope :correct, -> { where(correct: true) }

  validates :body, presence: true
  validate :question_has_no_more_than_four_answers

  private

  def question_has_no_more_than_four_answers
    errors.add(:question_id, 'There are no more than 3 answers available') if question.answers.count > 3
  end
end
