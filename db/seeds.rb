# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

buildings = [
["250 Park Avenue South", "Manhattan", "Admin", 1, 1],
["100 7th Avenue", "Manhattan", "Co-op", 19, 115],
["2 Grace Court", "Brooklyn", "Co-op", 6, 144],
["1 Bowery", "Manhattan", "Co-op", 44, 787],
["350 West 12th Street", "Manhattan", "Condo", 5, 10],
["302 East 111st Street", "Manhattan", "Condo", 20, 256],
["310 East 41st Street", "Manhattan", "Co-op", 10, 200],
["304 East 41st Street", "Manhattan", "Co-op", 16, 88],
["116 East 63rd Street", "Manhattan", "Co-op", 9, 36],
["350 East 77th Street", "Manhattan", "Co-op", 6, 80],
["114 East 90th Street", "Manhattan", "Co-op", 9, 41],
["359 Fort Washington Avenue", "Manhattan", "Co-op", 6, 54],
["330 Haven Avenue", "Manhattan", "Co-op", 6, 192],
["1 Tudor City Place", "Manhattan", "Co-op", 26, 776],
["138 Nassau Street", "Manhattan", "Co-op", 14, 43],
["260 Broadway", "Manhattan", "Condo", 12, 64],
["360 Clinton Avenue", "Manhattan", "Co-op", 6, 96],
["29 Tiffany Place", "Brooklyn", "Condo", 8, 70],
["352 West 12th Street", "Manhattan", "Condo", 5, 20],
["350 Bleeker Street", "Manhattan", "Co-op", 7, 133],
["148 West 23rd Street", "Manhattan", "Co-op", 12, 107],
["318 East 41st Street", "Manhattan", "Co-op", 10, 41],
["553 Park Avenue", "Manhattan", "Co-op", 12, 25],
["325 Riverside Drive", "Manhattan", "Co-op", 13, 53],
["437 East 55th Street", "Manhattan", "Co-op", 17, 102],
["220 East 87th Street", "Manhattan", "Co-op", 5, 44],
["371 Fort Washington Avenue", "Manhattan", "Co-op", 6, 54],
["128 Jane Street", "Manhattan", "Co-op", 6, 50],
["1036 Lexington Avenue", "Manhattan", "Condo", 11, 33],
["940 Park Avenue", "Manhattan", "Co-op", 15, 30],
["167 Perry Street", "Manhattan", "Co-op", 6, 75],
["12 West 72nd Street", "Manhattan", "Co-op", 31, 174],
["240 West 75th Street", "Manhattan", "Co-op", 10, 38],
["112 West 79th Street", "Manhattan", "Co-op", 14, 50],
["125 West 82nd Street", "Manhattan", "Condo", 9, 37],
["320 West 87th Street", "Manhattan", "Co-op", 9, 36],
["741 West End Avenue", "Manhattan", "Co-op", 6, 37],
["1020 Grand Concourse", "Bronx", "Co-op", 23, 466],
["736 West 187th Street", "Manhattan", "Condo", 7, 56],
["310 West End Avenue", "Manhattan", "Co-op", 16, 66],
["9 Prospect Park West", "Brooklyn", "Co-op", 17, 43],
["90 8th Avenue", "Brooklyn", "Co-op", 11, 60],
["2080 Barnes Avenue", "Bronx", "Co-op", 6, 96],
["1646 1st Avenue", "Manhattan", "Co-op", 17, 149],
["36 Park Row", "Manhattan", "Co-op", 11, 51],
["354 West 12th Street", "Manhattan", "Co-op", 5, 49],
["1180 2nd Avenue", "Manhattan", "Co-op", 14, 131],
["563 Park Avenue", "Manhattan", "Co-op", 13, 21],
["167 East 78th Street", "Manhattan", "Co-op", 10, 39],
["120 East 87th Street", "Manhattan", "Condo", 17, 221],
["14 Greene Street", "Manhattan", "Co-op", 5, 6],
]

buildings.each do |address, borough, owner, stories, units|
  Building.create(address: address, borough: borough, owner: owner, stories: stories, units: units)
end