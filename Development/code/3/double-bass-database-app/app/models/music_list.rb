class Music_list < ActiveRecord::Base
    belongs_to :list
    belongs_to :music
end