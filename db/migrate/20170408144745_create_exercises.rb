class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :calories
      t.integer :duration
      t.string :image
      t.string :url

      t.timestamps
    end
  end
end
