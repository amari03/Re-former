class User < ApplicationRecord
    validates :username, :email, :password, presence: true
    validates :username, length:{in: 4..10}
    validates :password, uniqueness: true, length: {in: 6..12}
end
