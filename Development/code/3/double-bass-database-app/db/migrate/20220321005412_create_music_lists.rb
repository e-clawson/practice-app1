class CreateMusicLists < ActiveRecord::Migration[5.2]
  def change
    create_table :music_lists do |t|
      t.string :title
      t.string :instrumentation
      t.string :composer_first_name 
      t.string :composer_last_name
      t.integer :rating
      t.integer :music_id
      t.index :music_id
      t.integer :list_id
      t.index :list_id

      t.timestamps 
    end
  end
end
