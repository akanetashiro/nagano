class Public::CustomersController < ApplicationController
  
  def new
  end 
  
  def create
    @customer = Customer.find_by(email: params[:session][:email])
    if @customer && customer.authenticate(params[:session][:password])
      session[:customer_id] = customer.id
      redirect_to root_path
    else 
      render :new
    end
  end 
  
  
  def show
    @customers = Customer.find
    
  end

  def edit
    @customers = Customer.find
  end
end
