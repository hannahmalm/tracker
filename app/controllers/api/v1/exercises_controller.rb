class Api::V1::ExercisesController < ApplicationController

    def index
        #used to render all the exercises
        #no longer rendering views - making a fetch request from the front and return all the json from the backend
        exercises = Exercise.all 
        render json: exercises
    end 
end
