class CommentsController < ApplicationController
  before_action :authorize, except: [:show, :index]
  def index
    @comments = Comment.all
    render :index
  end

  def new
    @image = Image.find(params[:image_id])
    @comment = @image.comments.new
    render :new
  end

  def create
    @image = Image.find(params[:image_id])
    @comment = @image.comments.new(comment_params)
    if @comment.save!
      flash[:notice] = "Comment successfully added!"
      redirect_to image_path(@image)
    else
      render :new
    end
  end

  def edit
    @image = Image.find(params[:image_id])
    @comment = Comment.find(params[:id])
    flash[:notice] = "Comment successfully edited!"
    render :edit
  end

  def show
    @comment = Comment.find(params[:id])
    render :show
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      flash[:notice] = "Comment successfully updated!"
      redirect_to image_path(@comment.image)
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "Comment successfully destroyed!"
    redirect_to image_path(@comment.image)
  end

  def show
    @image = Image.find(params[:image_id])
    @comment = Comment.find(params[:id])
    render :show
  end

  private
    def comment_params
      params.require(:comment).permit(:text_body)
      #tages params
    end

end
