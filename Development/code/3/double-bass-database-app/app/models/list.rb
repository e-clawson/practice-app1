class List < ActiveRecord::Base
    has_many :music_lists
    has_many :musics, through: :music_lists
end