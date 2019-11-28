class Api::V1::ProductsController < ApplicationController    
    def cart
        user = params[:user]
        @user  = User.find_by(name: user)        
        orders = @user.orders.where(statu: "PENDIENTE", active: true)
        if orders.length > 1
            obj = { messaje: "Orden pendiente de pago", orders: @user.orders.where(statu: "PENDIENTE", active: true) }
            render json: obj
        else
            search = params[:name]
            products = Product.where("name LIKE ?", "%#{search}%")
            render json: products
        end
    end
end