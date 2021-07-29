# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(username:"leon", email:"leon@example.com", password:"123456", password_confirmation:"12345")

Category.create([
  {name:"Grime"},
  {name:"Trap"},
  {name:"House"},
  {name:"Afro"}
])

Article.create([
  {title:"a", body:"abc", user_id: user.id, category_id: Category.first.id},
  {title:"b", body:"abc", user_id: user.id, category_id: Category.second.id},
  {title:"c", body:"abc", user_id: user.id, category_id: Category.third.id},
  {title:"d", body:"abc", user_id: user.id, category_id: Category.fourth.id}
])
