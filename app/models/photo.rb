class Photo < ActiveRecord::Base
  belongs_to :user
  has_many :ratings, dependent: :destroy
  validates :url, presence: true, uniqueness: true
end
