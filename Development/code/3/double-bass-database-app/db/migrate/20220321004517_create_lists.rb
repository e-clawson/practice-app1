class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :title
      t.string :instrumentation
      t.string :composer_first_name 
      t.string :composer_last_name
      t.integer :user_id
      t.index :user_id

      t.timestamps 
    end
  end
end
