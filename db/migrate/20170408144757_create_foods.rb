class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :weight
      t.integer :calories
      t.integer :protein
      t.integer :carbs
      t.integer :fat
      t.string :image

      t.timestamps
    end
  end
end
