class PhotosController < ApplicationController
  def index
    @photos = Photo.all.order(created_at: :desc)
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.user = current_user
    if @photo.save
      redirect_to @photo
    else
      render :new
    end
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update(photo_params)
      redirect_to @photo
    else
      render :edit
    end
  end

  def destroy
    photo = Photo.find(params[:id])
    photo.destroy
    redirect_to root_path
  end

  private
  def photo_params
    params.require(:photo).permit(:title, :url)
  end
end
