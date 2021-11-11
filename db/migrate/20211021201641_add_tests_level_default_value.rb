class AddTestsLevelDefaultValue < ActiveRecord::Migration[6.1]
  def change
    change_column_default :tests, :level, from: false, to: 0
  end
end
