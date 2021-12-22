class Answer < ApplicationRecord
  belongs_to :question

  scope :correct, -> { where(correct: true) }

  validates :body, presence: true
  validate :question_has_no_more_than_four_answers

  def question_has_no_more_than_four_answers
    Question.where(id: Question.ids).each do |questions|
      errors.add(:id, 'There are no more than 3 answers available') if Answer.where(:question_id => questions.id).count > 4
    end
  end
end
