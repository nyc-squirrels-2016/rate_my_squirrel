class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :photo, touch: true
  validates_inclusion_of :value, :in => 1..10
end
