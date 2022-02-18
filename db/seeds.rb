Fact.delete_all


100.times do
  Fact.create(
    character: Faker::Movies::StarWars.character,
    droid:Faker::Movies::StarWars.droid,
    planet:Faker::Movies::StarWars.planet,
    quote: Faker::Movies::StarWars.quote(character: @character)
  )
end
puts "Total number of Star Wars Quotes added: #{Fact.count}"