# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.new(
  user_name: "Admin",
  email: "admin@gamereviews.lol",
  password: "gamelover",
  password_confirmation: "gamelover"
)
admin.save!

nes = System.new(
  name: "NES",
  year: 1983,
  company: "Nintendo"
)
nes.save!

snes = System.new(
  name: "SNES",
  year: 1990,
  company: "Nintendo"
)
snes.save!

smb = Game.new(
  name: "Super Mario Brothers",
  year: 1985,
  developer: "Nintendo",
  system_id: nes.id
)
smb.save!

smw = Game.new(
  name: "Super Mario World",
  year: 1990,
  developer: "Nintendo",
  system_id: snes.id
)
smw.save!

# test the api endpoint
