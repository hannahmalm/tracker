class Api::V1::ExercisesController < ApplicationController

    def index #GET /api/v1/exercises - Used to render all exercises in JSON form
        #no longer rendering views - making a fetch request from the front and return all the json from the backend
        exercises = Exercise.all #local variable - not rendering veiw 
        render json: ExerciseSerializer.new(exercises) #create a new instance using a serializer
        #render json: exercises, include: [:name, :instructions]
    end 

    def create #POST /api/v1/exercises - used to create a new exercise based on what exercise params are given from the front end
        exercise = Exercise.new(exercise_params)
        if exercise.save #once the exercise saves, set the status to successful.
            render json: ExerciseSerializer.new(exercise), status: :accepted #allows for satuts codes to be sent in the fetch
        else #if the exercise does not save, give a 422 error and print the error 
            render json: {errors: exercise.errors.full_messages}, status: :unprocessible_entity #422 error - usually caused because validations fail
        end 
    end

   def show #GET /api/v1/exercises/:id
    exercise = Exercise.find_by_id(params[:id])
   end 

   def update #PATCH /api/v1/exercises/:id
    exercise = Exercise.find_by_id(params[:id])
    exercise.update(name: params[:name], instructions: params[:instructions], image: params[:image])
   end 

   def destroy #DELETE /api/v1/exercies/:id
    exercise = Exercise.find_by_id(params[:id])
    exercise.destroy!
   end 




    private

        #strong params must be included in the body of any POST or PATCH requests that are made with JS fetch 
        def exercise_params #exercise strong params - these are the only attributes that we will permit to be added into the database. Protects agains sql injection
            params.require(:exercise).permit(:name, :instructions, :image, :category_id)
        end 
end
