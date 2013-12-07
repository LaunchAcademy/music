# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
[
  {
    title: 'Begin the Beguine',
    album:  'Ella''s Greatest Hits',
    artist: 'Ella Fitzgerald',
    year: 1955,
    label: 'Columbia'
  },
  {
    title: 'Miss Otis Regrets',
    album:  'Ella''s Greatest Hits',
    artist: 'Ella Fitzgerald',
    year: 1967,
    label: 'BMG'
  },
  {
    title: 'My Funny Valentin',
    album:  'Jazz For the Martini',
    artist: 'Ella Fitzgerald',
    year: 1980,
    label: 'Universal'
  },
  {
    title: 'Begin the Beguine',
    album:  'Jazz For the Martini',
    artist: 'Chet Baker',
    year: 1969,
    label: 'Universal'
  },
  {
    title: 'My Funny Valentin',
    album:  'Chet Baker''s Greatest Hits',
    artist:'Chet Baker',
    year: 1967,
    label: 'Columbia'
  },
  {
    title: 'Without You',
    album: 'Chet Baker''s Greatest Hits',
    artist: 'Chet Baker',
    year: 1983,
    label: 'Capitol'
  },
  {
    title: 'My Funny Valentin',
    album:  'Monk Gets Romantic',
    artist:'Thelonious Monk',
    year: 1955,
    label: 'Columbia'
  },
  {
    title: 'All The Things You Are',
    album:  'Monk Solo Collection',
    artist:'Thelonious Monk',
    year: 1953,
    label: 'BMG'
  }
].each do |song_attributes|
  unless Song.where({
    title: song_attributes[:title],
    album: song_attributes[:album]
  }).exists?
    Song.create!(song_attributes)
  end
end
