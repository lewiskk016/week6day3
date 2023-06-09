# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = User.create([{username: 'user1'}, {username: 'user2'}, {username: 'user3'}])
artworks = Artwork.create([
    {title: 'artwork1', image_url: 'url1', artist_id: 1},
    {title: 'artwork2', image_url: 'url2', artist_id: 1},
    {title: 'artwork3', image_url: 'url3', artist_id: 1}])
