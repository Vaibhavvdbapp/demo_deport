class StoreController < ApplicationController
  before_action :authenticate_user!,:only => [:create, :update, :destroy]
  def index
    @products = Product.all
    @cart = current_cart
  end
end
