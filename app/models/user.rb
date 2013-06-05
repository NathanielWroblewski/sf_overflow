class User < ActiveRecord::Base
  attr_accessible :username, :password, :email

  has_many :questions
  has_many :answers

  has_secure_password
end
