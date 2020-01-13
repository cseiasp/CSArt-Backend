class AuctionSerializer < ActiveModel::Serializer
  attributes :id, :painting_id, :start, :end, :status
  belongs_to :painting
end
