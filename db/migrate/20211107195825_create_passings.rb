class CreatePassings < ActiveRecord::Migration[6.1]
  def change
    create_table :passings do |t|
      t.integer :user_id
      t.integer :test_id
      t.string :creator_test, default: false

      t.timestamps
    end
  end
end
