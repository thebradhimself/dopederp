class PicturesController < ApplicationController
  before_action :find_picture, only: [:edit, :update, :show, :destroy]



  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)

    if @picture.save
      redirect_to pictures_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update

    if @picture.update(picture_params)
      redirect_to pictures_path
    else
      render :edit
    end
  end

  def destroy
  end

  private
  def picture_params
    params.require(:picture).permit(:photo, :description, :user_id, :title, :upvote, :downvote)
  end

  def find_picture
    @picture = Picture.find(params[:id])
  end

end
