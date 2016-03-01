class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :user_id, null: false
      t.text :url, null: false, unique: true
      t.string :title

      t.timestamps null: false
    end
  end
end
