class CheesesController < ApplicationController

    def index
        cheeses = Cheese.all
        render json: cheeses
    end

    def order_by_price
        cheese = Cheese.order('price DESC')
        render json: cheese
    end

    def most_expensive
        
        # cheese = Cheese.order('price DESC').limit(1)
        cheese = Cheese.most_expensive
        render json: cheese.summary
    end


end
