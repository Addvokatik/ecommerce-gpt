class AddDeviseToAdminUsers < ActiveRecord::Migration[7.1]
  def change
    change_table(:admin_users) do |t|
      ## Remove or modify the line below
      t.remove :email if t.column_exists?(:email)
      ## Add any other changes you need
    end
  end
end

