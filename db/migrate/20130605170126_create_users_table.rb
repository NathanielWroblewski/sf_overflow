class CreateUsersTable < ActiveRecord::Migration
  def create
    create_table :users do |column|
      column.string :username, :email, :password_digest
      column.timestamps
    end
  end
end
