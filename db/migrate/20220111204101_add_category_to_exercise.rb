class AddCategoryToExercise < ActiveRecord::Migration[6.1]
  def change
    add_reference :exercises, :category, null: false, foreign_key: true
  end
end
