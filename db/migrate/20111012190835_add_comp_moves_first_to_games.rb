class AddCompMovesFirstToGames < ActiveRecord::Migration
  def change
    add_column :games, :comp_moves_first, :boolean
  end
end
