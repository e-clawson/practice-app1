class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.string :title
      t.string :instrumentation
      t.string :composer_first_name 
      t.string :composer_last_name
      t.integer :year_composed
      t.string :length

      t.timestamps 
    end
  end
end
