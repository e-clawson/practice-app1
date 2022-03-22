class User < ActiveRecord::Base
    has_many :lists
    validates :username, presence: true
    validates :email, presence: true, uniqueness: true

    enum role: %i(user administrator)
end