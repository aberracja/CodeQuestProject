 class User < ActiveRecord::Base
  
  belongs_to :company

  mount_uploader :avatar, AvatarUploader
	
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates :last_name, :first_name, presence: true



  

end
