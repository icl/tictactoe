class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.integer :subject_position
      t.integer :computer_position
      t.integer :prompt_timestamp
      t.integer :move_timestamp
      t.integer :game_id
      t.integer :subject_id
      t.string :board_state
      t.timestamps
    end
  end
end
