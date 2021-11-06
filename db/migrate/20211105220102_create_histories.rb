class CreateHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :histories do |t|
      t.integer :categories_id
      t.integer :tests_id

      t.timestamps
    end
  end
end
