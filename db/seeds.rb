# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p 'DESTROYING DB'
Quizz.destroy_all
Question.destroy_all
Answer.destroy_all

puts 'First Quizz in creation'
quizz = Quizz.create!({ title: 'Ruby Programming', description: 'The best programming quizz about Ruby', difficulty: 'medium' })
# quizz_1.save!
puts 'First Question in creation'
question_1 = Question.create!(title: 'What is a class?', good_answer: 1, quizz_id: Quizz.last.id)
p question_1
puts 'First Question in creation'
puts '1 answer'
answer_1_1 = Answer.create!(title: 'Generates objects', status: true, question_id: question_1.id )
puts '2 answer'
answer_1_2 = Answer.create!(title: 'false', status: false, question_id: question_1.id)
puts '3 answer'
answer_1_3 = Answer.create!(title: 'false', status: false, question_id: question_1.id)
puts '4 answer'
answer_1_4 = Answer.create!(title: 'false', status: false, question_id: question_1.id)

puts 'Second Question in creation'
question_2 = Question.create!(title: 'What is a module?', good_answer: 4, quizz_id: Quizz.last.id)

puts '1 answer'
answer_2_1 = Answer.create!(title: 'false', status: false, question_id: question_2.id )
puts '2 answer'
answer_2_2 = Answer.create!(title: 'false', status: false, question_id: question_2.id)
puts '3 answer'
answer_2_3 = Answer.create!(title: 'false', status: false, question_id: question_2.id)
puts '4 answer'
answer_2_4 = Answer.create!(title: 'Store logic', status: true, question_id: question_2.id)

puts 'Third Question in creation'
question_3 = Question.create!(title: 'What is Ruby?', good_answer: 2, quizz_id: Quizz.last.id)

puts '1 answer'
answer_3_1 = Answer.create!(title: 'false', status: false, question_id: question_3.id )
puts '2 answer'
answer_3_2 = Answer.create!(title: 'A programming language', status: true, question_id: question_3.id)
puts '3 answer'
answer_3_3 = Answer.create!(title: 'false', status: false, question_id: question_3.id)
puts '4 answer'
answer_3_4 = Answer.create!(title: 'false', status: false, question_id: question_3.id)

puts 'QUIZZ is GENERATED'