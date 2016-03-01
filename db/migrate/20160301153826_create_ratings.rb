class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :value
      t.integer :user_id, null: false
      t.integer :photo_id, null: false

      t.timestamps null: false
    end
  end
end
