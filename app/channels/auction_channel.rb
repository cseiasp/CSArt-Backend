class AuctionChannel < ApplicationCable::Channel

  
      def subscribed
        stream_from "auction_channel"
        puts "I´m subscribed"
        ActionCable.server.broadcast("auction_channel", sales: Sale.all_sales)
  
      end
    
      def unsubscribed
        # Any cleanup needed when channel is unsubscribed
      end
  
  
  end