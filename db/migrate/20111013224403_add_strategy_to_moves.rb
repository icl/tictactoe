class AddStrategyToMoves < ActiveRecord::Migration
  def change
    add_column :moves, :strategy, :string
  end
end
