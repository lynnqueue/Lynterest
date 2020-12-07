class ChangeTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :board_pins, :boards_pins
  end
end
