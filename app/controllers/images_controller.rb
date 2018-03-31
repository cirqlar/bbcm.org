class ImagesController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  before_action :get_image, only: [:show, :edit, :update, :destroy]

  def index
    @images = Image.all
  end

  def show
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
     if @image.save
       redirect_to @image
     else
       render 'new'
     end
  end

  def edit
  end

  def update
    if @image.update_attributes(image_params)
      redirect_to @image
    else
      render 'edit'
    end
  end

  def destroy
    if @image.destroy
      redirect_to root_path
    else
      redirect_to @image
    end
  end

  private
    def get_image
      @image = Image.find(params[:id])
    end

    def image_params
      params.require(:image).permit(:image, :event, :people)
    end
end
