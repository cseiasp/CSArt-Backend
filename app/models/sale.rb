class Sale < ApplicationRecord
    belongs_to :user
    belongs_to :painting

    def self.all_sales
        all_sales = Sale.all.select{|sale| sale.bid_price != nil}
        sorted_sales = all_sales.sort_by{|sale| sale.bid_price}.reverse
        sorted_sales.map{|sale|  "£" + sale.bid_price.to_s + ", " + sale.created_at.strftime("%B %e %Y at %I:%M %p")}
    end

end
