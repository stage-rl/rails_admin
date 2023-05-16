class UserRole < ApplicationRecord
  belongs_to :group
  belongs_to :user
end
