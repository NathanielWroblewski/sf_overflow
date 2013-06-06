class Question < ActiveRecord::Base
  attr_accessible :title, :description, :user_id

  belongs_to :user
  has_many :answers, :as => :answerable
  has_many :votes, :as => :votable

  validates :title, :presence => true
  validates :title, :uniqueness => true
  validates :description, :presence => true

end
