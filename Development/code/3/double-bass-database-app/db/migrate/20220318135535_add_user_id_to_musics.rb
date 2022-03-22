class AddUserIdToMusics < ActiveRecord::Migration[5.2]
  def change
    add_index :musics, :user_id
  end
end
