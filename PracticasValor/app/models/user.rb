class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation
  validates :first_name,:last_name,:email_confirmation,:password_confirmation, :presence => true, :if => "(self.id == 0 || self.id == nil )"
  validates :email, :confirmation => true
  validates_format_of :phone, :message => "must be a valid telephone number.", :with => /^[0-9\-\s()]*$/, :allow_blank => true
end
