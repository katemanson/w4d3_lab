require_relative( './models/album' )
require_relative( './models/artist' )

require( 'pry-byebug' )

artist1 = Artist.new( { 'name' => 'Oasis' } )#.save();
artist1.save();
album1 = Album.new( { 'name' => 'Roll With It', 'artist_id' => artist1.id } )#.save();
album1.save()
album2 = Album.new( { 'name' => 'Be Here Now', 'artist_id' => artist1.id } )#.save();
album2.save()

artist2 = Artist.new( { 'name' => 'Blur'} )
artist2.save()
album3 = Album.new( { 'name' => 'Parklife', 'artist_id' => artist2.id } )
album3.save()
album4 = Album.new( { 'name' => 'The Great Escape', 'artist_id' => artist2.id } )
album4.save()

artist3 = Artist.new( { 'name' => 'Pulp' } )
artist3.save()
album5 = Album.new( { 'name' => 'Different Class', 'artist_id' => artist3.id } )
album5.save()
album6 = Album.new( { 'name' => 'This Is Hardcore', 'artist_id' => artist3.id } )
album6.save()





binding.pry
nil
