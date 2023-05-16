class Group < ApplicationRecord
  belongs_to :tenant
  has_many :user_roles
  has_many :users, through: :user_roles
end
