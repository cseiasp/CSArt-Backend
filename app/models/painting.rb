class Painting < ApplicationRecord
    has_many :sales
    belongs_to :auction
    
end
