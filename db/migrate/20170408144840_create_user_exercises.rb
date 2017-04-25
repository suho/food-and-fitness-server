class CreateUserExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :user_exercises do |t|
      t.integer :duration
      t.belongs_to :user, index: true
      t.belongs_to :exercise, index: true

      t.timestamps
    end
  end
end
