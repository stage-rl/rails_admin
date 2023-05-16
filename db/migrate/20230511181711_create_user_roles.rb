class CreateUserRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_roles do |t|
      t.belongs_to :group
      t.belongs_to :user

      t.timestamps
    end
  end
end
