class Tenant < ApplicationRecord
  has_many :groups
  has_many :user_roles, through: :groups
end
