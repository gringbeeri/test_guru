class AddColumnQuestionsIdToTableAnswers < ActiveRecord::Migration[6.1]
  def change
    add_column :answers, :question_id, :integer
  end
end
