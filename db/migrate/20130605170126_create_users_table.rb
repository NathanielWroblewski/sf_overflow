class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |column|
      column.string :username, :email, :password_digest, :provider, :uid, :name
      column.timestamps
    end
  end
end
