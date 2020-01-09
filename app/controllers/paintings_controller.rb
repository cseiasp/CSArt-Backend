class PaintingsController < ApplicationController

    def index
        paintings = Painting.all.select{|work| work.medium == "Oil painting"}
        drawings = Painting.all.select{|work| work.medium == "Charcoal drawing"}
        render json: {paintings: paintings, drawings:drawings}
    end

    def create
    end
end
