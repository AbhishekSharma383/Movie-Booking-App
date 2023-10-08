# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)

# # Create some sample movies



# # Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each do |seedfile|
# #     load seedfile
# # end
  

# movies = [
#   {
#     title: 'The Shawshank Redemption',
#     description: 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
#     release_date: '1994-09-23',
#     genre: 'Drama'
#   },
#   {
#     title: 'The Godfather',
#     description: 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
#     release_date: '1972-03-24',
#     genre: 'Crime, Drama'
#   },
#   {
#     title: 'Inception',
#     description: 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.',
#     release_date: '2010-07-16',
#     genre: 'Action, Adventure, Sci-Fi'
#   }
# ]



# # Loop through the movies array and create records in the Movie table
# movies.each do |movie_data|
#   Movie.create!(movie_data)
# end






# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)

# # Create some sample movies



# # Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each do |seedfile|
# #     load seedfile
# # end


# venue1 = Venue.create(name: 'CinemaPlex', address: '123 Main St', capacity: 200)
# venue2 = Venue.create(name: 'MegaCinema', address: '456 Elm St', capacity: 300)

# movies = [
#   {
#     title: 'The Shawshank Redemption',
#     description: 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
#     release_date: '1994-09-23',
#     genre: 'Drama'
#   },
#   {
#     title: 'The Godfather',
#     description: 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
#     release_date: '1972-03-24',
#     genre: 'Crime, Drama'
#   },
#   {
#     title: 'Inception',
#     description: 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.',
#     release_date: '2010-07-16',
#     genre: 'Action, Adventure, Sci-Fi'
#   }
# ]


# # Loop through the movies array and create records in the Movie table
# movies.each do |movie_data|
#   Movie.create!(movie_data)
# end




#  # Create movies
#  movie1 = Movie.create(title: 'Movie 1', description: 'Description 1', release_date: Date.today, genre: 'Action')
#  movie2 = Movie.create(title: 'Movie 2', description: 'Description 2', release_date: Date.today, genre: 'Comedy')
 
#  # Create showtimes with associations
#  Showtime.create(movie: movie1, venue: venue1, showtime_at: Time.now)
#  Showtime.create(movie: movie1, venue: venue2, showtime_at: Time.now + 1.hour)
#  Showtime.create(movie: movie2, venue: venue1, showtime_at: Time.now + 2.hours)





