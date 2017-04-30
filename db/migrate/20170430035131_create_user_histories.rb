class CreateUserHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :user_histories do |t|
      t.integer :height
      t.integer :weight
      t.belongs_to :user, index: true
      t.belongs_to :goal, index: true
      t.belongs_to :active, index: true

      t.timestamps
    end
  end
end
