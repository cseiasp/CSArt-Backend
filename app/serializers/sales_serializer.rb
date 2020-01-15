class SalesSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :painting_id, :status, :bid_price
    belongs_to :painting
end
  