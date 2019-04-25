# Add seed data here. Seed your database with `rake db:seed`
Artist.destroy_all
Song.destroy_all
Genre.destroy_all
Songgenre.destroy_all

a1 = Artist.create(name: 'AC/DC')
a2 = Artist.create(name: 'Metallica')

s1 = Song.create(name: 'Song1', artist: a1)
s2 = Song.create(name: 'Song2', artist: a2)
s3 = Song.create(name: 'Song3', artist: a1)

g1 = Genre.create(name: 'Pop')
g2 = Genre.create(name: 'Jazz')

s1.genres << g1
s1.genres << g2
s2.genres << g1
