require 'faker'

puts 'Creating 10 fake articles...'
10.times do
  article = Article.new(
    title: Faker::StarWars.character,
    content: Faker::StarWars.quote
  )
  article.save!
end
puts 'Finished!'

