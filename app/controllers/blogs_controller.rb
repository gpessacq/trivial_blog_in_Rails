class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def create
    @blog = Blog.new(sala_params)

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Record added.' }
        format.json { render action: 'show', status: :created, location: @blog }
      else
        format.html { render action: 'new' }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def set_blog
      @blog = Blog.find(params[:id])
    end

    def sala_params
      params.require(:blog).permit(:name, :text)
    end
end
