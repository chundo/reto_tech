class Api::V1::ProductsController < ApplicationController    
    def cart
        user = params[:user]
        @user  = User.find_by(name: user)
        render json: @user
    end
end