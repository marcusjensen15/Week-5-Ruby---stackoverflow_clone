# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




Question.destroy_all

Answer.destroy_all

# @user = User.create!({user_name: "Bobby Bottleservice"})

@user = User.create!({user_name: "bobby", email: "pikachu", password: "woof"})


50.times do |index|

@question = Question.create!({title: Faker::Food.spice,
description: "lajsdfljadslfjaldjf;lakjdfl;kasdjflkajsdf;lkajsdfl;kajsdfl;ajksdf;lkjasdkl;fjasl;dfjaskl;dfjals;kdjflasjdf;laksdjflakjsdflkajsdfl;jas"})

5.times do |index|
Answer.create!({answer_field: "lajsdfljadslfjaldjf;lakjdfl;kasdjflkajsdf;lkajsdfl;kajsdfl;ajksdf;lkjasdkl;fjasl;dfjaskl;dfjals;kdjflasjdf;laksdjflakjsdflkajsdfl;jas",
product_id: @question.id})

end
end

p "Created #{Question.count} questions and #{Answer.count} answers! "


# t.string "title"
# t.string "description"
# t.integer "user_id"
#
# t.string "answer_field"
# t.integer "question_id"
