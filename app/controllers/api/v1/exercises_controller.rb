class Api::V1::ExercisesController < ApplicationController

    def index
        #used to render all the exercises
        #no longer rendering views - making a fetch request from the front and return all the json from the backend
        exercises = Exercise.all 
        render json: exercises
    end 

    def create 
        exercise = Exercise.new(exercise_params)
        if exercse.save 
            render json: exercise, status: :accepted #allows for satuts codes to be sent in the fetch
        else 
            render json: {errors: exercise.errors.full_messages}, status: :unprocessible_entity #422 error - usually caused because validations fail
        end 
    end


    private
        def exercise_params #exercise strong params - these are the only attributes that we will permit to be added into the database. Protects agains sql injection
            params.require(:exercise).permit(:name, :instructions, :image, :category_id)
        end 
end
