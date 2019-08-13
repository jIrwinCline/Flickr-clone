class ImagesController < ApplicationController
  def index
    @images = Image.all
    render :index
  end

  def new
    @image = Image.new
    # @user_id = current_user.id
    render :new
  end

  def create
    # image_params[:user_id] = current_user.id
    @image = Image.new(image_params)
    # @image.user_id = current_user.id
    if @image.save
      flash[:notice] = "Image successfully posted!"
      redirect_to images_path
    else
      render :new
    end
  end

  def edit
    @image = Image.find(params[:id])
    flash[:notice] = "Image successfully edited!"
    render :edit
  end

  def show
    @image = Image.find(params[:id])
    render :show
  end

  def update
    @image= Image.find(params[:id])
    if @image.update(image_params)
      flash[:notice] = "Image successfully updated!"
      redirect_to images_path
    else
      render :edit
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    flash[:notice] = "Image successfully destroyed!"
    redirect_to images_path
  end

  private
  def image_params

    params.require(:image).permit(:title)
  end
end
