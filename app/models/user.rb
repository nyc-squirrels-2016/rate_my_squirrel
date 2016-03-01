class User < ActiveRecord::Base
  has_secure_password
  has_many :ratings
  has_many :photos
  validates :username, :email, {presence: true, uniqueness: true}
  # validates :password, length: {minimum: 20}
end
