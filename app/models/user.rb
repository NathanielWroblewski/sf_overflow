class User < ActiveRecord::Base
  attr_accessible :username, :password, :email
  
  has_secure_password

  has_many :questions
  has_many :answers
  has_many :votes

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates :username, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true

end
