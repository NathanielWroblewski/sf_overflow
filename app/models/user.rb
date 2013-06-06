class User < ActiveRecord::Base
  attr_accessible :username, :password, :email
  
  has_secure_password

  has_many :questions
  has_many :answers
  has_many :votes

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates :username, :presence => true
  validates :username, :uniqueness => true
  validates :email, :presence => true
  validates :email, :uniqueness => true

  def not_voted?(votable_type, votable_id)
    !Vote.find_by_user_id_and_votable_type_and_votable_id(self.id, votable_type, votable_id)
  end
  
end
