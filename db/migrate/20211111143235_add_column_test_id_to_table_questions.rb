class AddColumnTestIdToTableQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :test_id, :integer
  end
end
