class Auction < ApplicationRecord

    def index
        auctions = Auction.all 
        render json: auctions
    end

end
