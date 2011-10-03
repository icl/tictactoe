class AddErrorToMoves < ActiveRecord::Migration
  def change
    add_column :moves, :is_error, :boolean
  end
end
