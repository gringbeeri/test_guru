class AddColumnCreatorTestToTablePassing < ActiveRecord::Migration[6.1]
  def change
    add_column :passings, :creator_test, :string
  end
end
