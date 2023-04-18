class Admin::ItemsController < ApplicationController
  
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    if @item.save
      redirect_to admin_items_path
    else
      render :new
    end
  end

  def index
    @items =Item.page(params[:page])
  end

  def show
    @item = Item.find(params[:id])  
  end
  
  def edit
  end

end

  private
  def list_params
    params.require(:item).permit(:title, :body, :image)  
  end
