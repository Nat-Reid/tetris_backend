# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Score.destroy_all

nat = User.create(initials: "NCR")
tiffany = User.create(initials: "TAC")

nat.scores.create(score:1200)
nat.scores.create(score:2340)
nat.scores.create(score:900)
nat.scores.create(score:4920)

tiffany.scores.create(score:1200)
tiffany.scores.create(score:1200)
tiffany.scores.create(score:1200)
tiffany.scores.create(score:4920)
tiffany.scores.create(score:3060)
