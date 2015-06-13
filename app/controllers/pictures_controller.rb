class PicturesController < ApplicationController

  def index
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
  end

  def destroy
  end

  private
  def picture_params
    params.require(:picture).permit(:photo, :description, :user_id)
  end

end
