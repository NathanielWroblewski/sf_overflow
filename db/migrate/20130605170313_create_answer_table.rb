class CreateAnswerTable < ActiveRecord::Migration
  def create
    create_table :answers do |column|
      column.string :description
      column.timestamps
    end
  end
end
