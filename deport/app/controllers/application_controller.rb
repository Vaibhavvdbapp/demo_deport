class ApplicationController < ActionController::Base
    protect_from_forgery
    before_action :authenticate_user!,:only => [:create, :update, :destroy]
    private
        def current_cart
            Cart.find(session[:cart_id])
        rescue ActiveRecord::RecordNotFound
            cart = Cart.create
            session[:cart_id] = cart.id
            cart
        end
end
