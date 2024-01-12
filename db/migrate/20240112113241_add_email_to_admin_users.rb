class AddEmailToAdminUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :admin_users, :email, :string
  end
end
