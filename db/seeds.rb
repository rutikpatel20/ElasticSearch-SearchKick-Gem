# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

20.times do
  Book.create(
    book_name: Faker::Book.title,
    genre: Faker::Book.genre,
    author_name: Faker::Book.author,
    summary: Faker::Quote.famous_last_words + Faker::Quote.famous_last_words,
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    published_date: Faker::Date.between(from: "2015-12-20", to: "2022-03-28"),
  )
  puts "Books Seeded"
end
