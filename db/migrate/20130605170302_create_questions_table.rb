class CreateQuestionsTable < ActiveRecord::Migration
  def change
    create_table :questions do |column|
      column.string :title, :description
      column.references :user
      column.timestamps
    end
  end
end
