class SalesController < ApplicationController

    def index
      sales = Sale.all_sales
      render json: sales
    end

    def show
      if params[:email]
      me  = User.find_by(email: params[:email]).id
      my_sales = Sale.select{|sale| user_id == me}
      render json: my_sales
      end
    end

    def create
        new_sale = Sale.create(sale_params)
        render json: new_sale
    end

    private
 
    def sale_params
      params.require(:sale).permit(:user_id, :painting_id, :status, :bid_price)
    end
end
