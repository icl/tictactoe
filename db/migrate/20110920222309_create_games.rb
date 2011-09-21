class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :subject_id
      t.integer :dimension
      t.integer :experimental_condition_id

      t.timestamps
    end
  end
end
