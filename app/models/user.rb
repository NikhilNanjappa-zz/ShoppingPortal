class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable and :activatable
  #:confirmable,
  has_many :orders, :dependent => :destroy
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  # Setup accessible (or protected) attributes for your model
  #attr_accessible :email, :name, :password, :password_confirmation
  #protected :email, :password, :password_confirmation
end