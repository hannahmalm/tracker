class ExerciseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :instructions, :image, :category_id, :category
 
end
