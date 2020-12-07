class ChangePinColumn < ActiveRecord::Migration[5.2]
  def change
    change_column_null :pins, :title, true
    change_column_null :pins, :url, true
  end
end
