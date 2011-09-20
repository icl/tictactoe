class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :initials

      t.timestamps
    end
  end
end
