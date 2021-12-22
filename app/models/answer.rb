class Answer < ApplicationRecord
  belongs_to :question

  scope :right, -> { where(correct: true) }

  validates :body, presence: true
  validate :number_answers

  def number_answers
    Answer.where(question_id: Question.ids).each do |questions|
      errors.add(:question_id, 'Maximum 3 values') if Answer.where(:question_id => questions.question_id).count > 4
    end
  end
end
