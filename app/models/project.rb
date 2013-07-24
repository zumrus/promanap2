class Project < ActiveRecord::Base
  attr_accessible :name
  has_many :tasks, dependent: :destroy
  has_many :project_user_relations
  has_many :users, :through=>:project_user_relations
end
