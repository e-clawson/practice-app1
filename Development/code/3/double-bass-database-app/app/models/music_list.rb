class MusicList < ActiveRecord::Base
    belongs_to :list
    belongs_to :music
end