class Vote < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :counter, :votable_type, :votable_id

  belongs_to :votable, :polymorphic => true
  belongs_to :user

  
end
