class User < ApplicationRecord
    has_many :user_roles
    has_many :groups, through: :user_roles
end
