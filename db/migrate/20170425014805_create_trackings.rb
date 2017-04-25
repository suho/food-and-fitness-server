class CreateTrackings < ActiveRecord::Migration[5.0]
  def change
    create_table :trackings do |t|
      t.string :active
      t.integer :duration
      t.integer :distance

      t.belongs_to :user

      t.timestamps
    end
  end
end
