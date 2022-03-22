class DeleteUserIdFromMusics < ActiveRecord::Migration[5.2]
  def change
    remove_column :musics, :user_id
  end
end
