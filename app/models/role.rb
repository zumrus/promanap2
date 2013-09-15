class Role < ActiveRecord::Base
  attr_accessible :name
  
#  has_and_belongs_to_many :users
  has_many :roles_users
  has_many :users, :through => :roles_users
end
