class Api::V1::ExercisesController < ApplicationController

    def index
        #used to render all the exercises
        @exercises = Exercise.all 
        render json: @exercises
    end 
end