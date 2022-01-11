# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Exercise.destroy_all


push = Category.create(title: "Push")
pull= Category.create(title: "Pull")
legs= Category.create(title: "Legs")


deadlift = Exercise.create(name:"Deadlift",instructions:"Stand tall with your feet shoulder-width apart, holding a barbell off the floor with an overhand grip just outside your thighs. Keeping a slight bend in your knees, bend forwards from the hips – not the waist – and lower the bar down the front of your shins until you feel a good stretch in your hamstrings", image:"image_url", category_id: legs.id)
