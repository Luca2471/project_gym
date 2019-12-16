require_relative( "../models/classes.rb" )
require_relative( "../models/humans.rb" )
require_relative( "../models/memberships.rb" )
require( "pry" )

Humans.delete_all()
Classes.delete_all()
Memberships.delete_all()
