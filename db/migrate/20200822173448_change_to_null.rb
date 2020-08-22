class ChangeToNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :entries, :room_id, false
    change_column_null :messages, :room_id, false
  end
end
