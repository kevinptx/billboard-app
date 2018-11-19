Board.destroy_all
Artist.destroy_all
Song.destroy_all

10.times do
  Board.create(name: Faker::Music.genre)
end

Board.all.each do
  board_id = rand(10)
  artist_id = rand(10)

  #song needs board id and artist id
  Artist.create(name: Faker::Music.band)
  Song.create(name: Faker::Music.album, board_id: board_id, artist_id: artist_id)
end




print `clear`
puts "10 Genres Created"
puts "10 Artists Created Per Board"
puts "10 Songs Created Per Board"
