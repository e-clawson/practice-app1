class Music < ActiveRecord::Base
    has_many :music_lists
    has_many :lists, through: :music_lists
end