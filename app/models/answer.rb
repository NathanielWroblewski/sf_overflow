class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :answerable, :polymorphic => true
  has_many :answers, :as => :answerable
end
