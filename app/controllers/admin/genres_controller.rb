class Admin::GenresController < ApplicationController
  
  def new
    @genre = Genre.new
  end
  
  def create
    @genre = Genre.new(post_image_params)
    @genre.user_id = current_user.id
    if @genre.save
      redirect_to genre_path
    else
      @genres = Genre.all
      render :index
    end
  end 

  def index
    @genres = Genre.all
    @genre = Genre.new
  end
  
  def edit
    @genre = Genre.find(params[:id])
  end 


end
