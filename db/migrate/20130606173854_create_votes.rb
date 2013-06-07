class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |column|
      column.string :votable_type
      column.integer :votable_id, :user_id, :counter
      column.timestamps
    end
  end
end
