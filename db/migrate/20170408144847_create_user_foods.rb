class CreateUserFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :user_foods do |t|
      t.belongs_to :user, index: true
      t.belongs_to :food, index: true

      t.timestamps
    end
  end
end
