class CreateExperimentalConditions < ActiveRecord::Migration
  def change
    create_table :experimental_conditions do |t|
      t.string :name

      t.timestamps
    end
  end
end
