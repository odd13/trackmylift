class CreateExercisegroups < ActiveRecord::Migration[5.0]
  def change
    create_table :exercisegroups do |t|
      t.string :name
      t.timestamps
    end
  end
end
