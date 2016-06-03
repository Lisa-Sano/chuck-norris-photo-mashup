class CreateMashups < ActiveRecord::Migration
  def change
    create_table :mashups do |t|
      t.string :photo_url, null: false
      t.string :joke, null: false
      t.integer :favorites, default: 1

      t.timestamps null: false
    end
  end
end
