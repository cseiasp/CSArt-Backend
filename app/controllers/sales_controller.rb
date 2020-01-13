require 'stripe'
Stripe.api_key = ENV["STRIPE_API_KEY"]

class SalesController < ApplicationController

    def index
      sales = Sale.all_sales
      render json: sales
    end

    def show
      if params[:id]
        my_sales = Sale.all.select{|sale| user_id == params[:id]}
        render json: my_sales
      else
        render json: { errors: my_sales.errors.full_messages}, status: :not_acceptable
      end
    end

    def create
        new_sale = Sale.create(sale_params)
        if new_sale.valid?
          render json: {new_bid: new_sale.saleInfo}
        else
          render json: { errors: new_sale.errors.full_messages}, status: :not_acceptable
        end
    end

    def charge
      token = params[:token]
      charge = Stripe::Charge.create(
        {
          amount: 100,
          currency: 'gbp',
          description: "Charge for" ,
          receipt_email: "jenny.rosen@example.com",
          source: token
        }
      )
    end

    private
 
    def sale_params
      params.require(:sale).permit(:user_id, :painting_id, :status, :bid_price)
    end
end
