class Answer < ActiveRecord::Base
  attr_accessible :description, :user_id, :answerable_type, :answerable_id, :question_id

  belongs_to :user
  belongs_to :answerable, :polymorphic => true
  has_many :answers, :as => :answerable
  has_many :votes, :as => :votable

  validates :description, :presence => true

  def sum_votes
    Vote.where("votable_id = ? AND votable_type = 'Answer'", self.id).sum('counter')
  end
end
