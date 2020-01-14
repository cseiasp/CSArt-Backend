class AuctionsController < ApplicationController

    def index
        auctions = Auction.all.sort_by{|auction| auction.start}.reverse!
        render json: auctions
    end

    def create
        auction = Auction.create(auction_params)
        if auction.valid?
          render json: auction
        else
          render json: { errors: auction.errors.full_messages}, status: :not_acceptable
        end
    end

    def update
      auction = Auction.find(params[:id])
      auction.update(status: auction_params[:status])
      render json: auction
    end

    private
 
    def auction_params
      params.require(:auction).permit(:painting_id, :start, :end, :status)
    end

end
