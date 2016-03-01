class RatingsController < ApplicationController
  def create
    binding.pry
    rating = Rating.new(photo_id: params[:photo_id], value: params[:rating][:value])
    rating.user = current_user
    rating.save
    redirect_to :back
  end
end
