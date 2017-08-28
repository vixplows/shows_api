# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Favourite.delete_all()
User.delete_all()
Show.delete_all()

s1 = Show.create(
                  {
                    title: "Orphan Black",
                    series: 5,
                    description: "Dark comedy thriller sci-fi about clones",
                    image: "https://xoxoafterdark.com/wp-content/uploads/2014/04/OrphanBlack.jpg",
                    programmeID: "123a"
                  }
                )

s2 = Show.create(
                  {
                    title: "House of Cards",
                    series: 5,
                    description: "Political thriller set in the white house",
                    image: "placeholder.jpg",
                    programmeID: "123b"
                  }
                )

u1 = User.create({name: "John Snow"})

Favourite.create({date: "2017-01-02", user: u1, show: s2})
