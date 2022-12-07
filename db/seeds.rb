# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create([
  { username: 'mike' },
  { username: 'ify' },
  { username: 'daina' }
])

Poll.create([
  { author_id: 1, title: 'favorite movie' },
  { author_id: 2, title: 'hobbies' },
  { author_id: 3, title: 'this or that' },
  { author_id: 4, title: 'vacation destination' }
])

Question.create([
  { poll_id: 1, text: 'Are a morning or an evening person?' },
  { poll_id: 2, text: 'If you choose a citizenship, pick one?' },
  { poll_id: 2, text: 'Would you choose a dog or a cat as a pet?' },
  { poll_id: 3, text: '100,000$ now or 30000$ every year for the next four years?' },
])

AnswerChoice.create([
  { question_id: 1, text: 'Thor' },
  { question_id: 1, text: 'Legally Blonde' },
  { question_id: 1, text: 'The Godfather' },
  { question_id: 2, text: '0-3' },
  { question_id: 2, text: '4-7' },
  { question_id: 2, text: '8+' },
  { question_id: 3, text: 'Sports/Fitness' },
  { question_id: 3, text: 'Cooking, Eating, Drinking' },
  { question_id: 3, text: 'Crafting' },
  { question_id: 4, text: 'Sunburn' },
  { question_id: 4, text: 'Frostbite' },
  { question_id: 5, text: 'Paris' },
  { question_id: 5, text: 'Hawaii' },
  { question_id: 5, text: 'Dubai' },
  { question_id: 5, text: 'Swiss Alps' },
  { question_id: 6, text: 'Ocean' },
  { question_id: 6, text: 'Mountains' },
  { question_id: 5, text: 'Desert' }
])

Response.create([
  { respondent_id: 1, answer_choice_id: 5 },
  { respondent_id: 1, answer_choice_id: 10 },
  { respondent_id: 2, answer_choice_id: 13 },
  { respondent_id: 2, answer_choice_id: 16 },
  { respondent_id: 3, answer_choice_id: 2 },
  { respondent_id: 3, answer_choice_id: 14 },
  { respondent_id: 4, answer_choice_id: 1 },
  { respondent_id: 4, answer_choice_id: 7 }
])