class User < ActiveRecord::Base
  has_secure_password
  has_many :ratings
  has_many :photos
  has_many :given_ratings, through: :photos, source: :ratings
  validates :username, :email, {presence: true, uniqueness: true}
  # validates :password, length: {minimum: 20}

  def overall_avg
    self.given_ratings.average(:value)
  end
end
