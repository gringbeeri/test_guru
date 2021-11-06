class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.integer :users_id
      t.integer :tests_id

      t.timestamps
    end
  end
end
