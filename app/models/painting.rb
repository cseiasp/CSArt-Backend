class Painting < ApplicationRecord
    has_many :sales
    has_one :auction
    
end
