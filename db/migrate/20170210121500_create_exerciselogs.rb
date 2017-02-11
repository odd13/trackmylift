class CreateExerciselogs < ActiveRecord::Migration[5.0]
  def change
    create_table :exerciselogs do |t|
      t.integer :reps
      t.float :weight
      t.belongs_to :exercisegroup, index: true
      t.timestamps
    end
  end
end
