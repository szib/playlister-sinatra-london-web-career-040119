# Add seed data here. Seed your database with `rake db:seed`
Artist.destroy_all
Song.destroy_all

a1 = Artist.create(name: 'AC/DC')
a2 = Artist.create(name: 'Metallica')

s1 = Song.create(title: 'Song1', artist: a1)
s2 = Song.create(title: 'Song2', artist: a2)
s3 = Song.create(title: 'Song3', artist: a1)
