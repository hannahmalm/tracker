class Api::V1::CategoriesController < ApplicationController

    def index #GET /api/v1/categories
       categories = Category.all 
       render json: CategorySerializer.new(categories) #create a new instance using a serializer
    end 

end
