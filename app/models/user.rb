class User < ActiveRecord::Base
  attr_accessible :email, :fname, :lname
  has_many :microposts
end
