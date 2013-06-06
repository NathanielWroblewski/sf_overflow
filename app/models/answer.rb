class Answer < ActiveRecord::Base
  attr_accessible :description, :user_id, :answerable_type, :answerable_id

  belongs_to :user
  belongs_to :answerable, :polymorphic => true
  has_many :answers, :as => :answerable
  has_many :votes, :as => :votable

  validates :description, :presence => true
end
