class User < ApplicationRecord
    has_many :sales

    def all_bids
        sorted_bids = self.sales.sort_by{|sale| sale.bid_price}.reverse
        return sorted_bids.map{|sale|  "£" + sale.bid_price.to_s + ", " + sale.created_at.strftime("%B %e %Y at %I:%M %p")}
    end


end
