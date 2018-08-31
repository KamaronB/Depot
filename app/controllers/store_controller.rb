class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def counter
    if session[:counter].nil?
      session[:counter]= 0


    end



session[:counter]+=1
  end


  def index
    @count = counter
   @products = Product.order(:title)

if @count==1
  @message = "you have visited #{@count} time"

else

   @message = "you have visited #{@count} times"
end


  end
end
