class CreateUserFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :user_foods do |t|
      t.integer :weight
      t.string :meal
      t.belongs_to :user_history, index: true
      t.belongs_to :food, index: true

      t.timestamps
    end
  end
end
