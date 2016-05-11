class User
  include Mongoid::Document
  
  field :email, type: String
  field :password_digest, type: String
  
  has_secure_password
  
  attr_accessible :email, :password, :password_confirmation
  
  validates_uniqueness_of :email
end
