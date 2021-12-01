class Answer < ApplicationRecord
  belongs_to :question

  scope :right, -> { where(correct: 't') }

  validates :body, presence: true
  validates :question_id, uniqueness: true, if: :validate_max_answer?

  def validate_max_answer?
    question_id > 1 && question_id < 4
  end
end
