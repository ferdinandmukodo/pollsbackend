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
  { question_id: 1, text: 'morning' },
  { question_id: 1, text: 'evening' },
  { question_id: 2, text: 'canada' },
  { question_id: 2, text: 'malta' },
  { question_id: 3, text: 'cat' },
  { question_id: 3, text: 'dog' },
  { question_id: 4, text: '4 years' },
  { question_id: 4, text: 'now' }
])

Response.create([
  { respondent_id: 1, answer_choice_id: 1 },
  { respondent_id: 1, answer_choice_id: 2 },
  { respondent_id: 2, answer_choice_id: 3 },
  { respondent_id: 2, answer_choice_id: 4 },
  { respondent_id: 3, answer_choice_id: 5 },
  { respondent_id: 3, answer_choice_id: 6 },
  { respondent_id: 4, answer_choice_id: 7 },
  { respondent_id: 4, answer_choice_id: 8 }
])