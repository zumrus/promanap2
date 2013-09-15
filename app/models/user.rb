class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  # attr_accessible :title, :body
  has_many :project_user_relations
  has_many :projects, :through=>:project_user_relations
  
#  has_and_belongs_to_many :roles
  has_many :roles_users
  has_many :roles, :through => :roles_users
  
  def role?(role)
    return !!self.roles.find_by_name(role)
  end

end
