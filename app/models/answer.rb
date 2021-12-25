class Answer < ApplicationRecord
  belongs_to :question

  scope :correct, -> { where(correct: true) }

  validates :body, presence: true
  validates :question_id, presence: true
  validate :question_has_no_more_than_four_answers

  private

  def question_has_no_more_than_four_answers
    Question.ids.each do |questions|
      errors.add(:question_id, 'There are no more than 3 answers available') if Answer.where(:question_id => questions).count > 4
    end
  end
end
