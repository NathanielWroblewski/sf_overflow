class Vote < ActiveRecord::Base
  attr_accessible :counter, :votable_type, :votable_id, :user_id

  belongs_to :votable, :polymorphic => true
  belongs_to :user
end
