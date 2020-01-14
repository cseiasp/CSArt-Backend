class SaleSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :painting_id, :status, :bid_price
end
  