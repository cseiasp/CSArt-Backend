class AuctionSerializer < ActiveModel::Serializer
  attributes :id, :painting_id, :start, :end
end
