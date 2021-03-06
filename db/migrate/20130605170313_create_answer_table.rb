class CreateAnswerTable < ActiveRecord::Migration
  def change
    create_table :answers do |column|
      column.string :description, :answerable_type
      column.integer :answerable_id
      column.references :user
      column.timestamps
    end
  end
end
