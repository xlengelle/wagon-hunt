# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

Category.destroy_all

@business = Category.create(name: "Business")
@lifestyle = Category.create(name: "Lifestyle")
@entertainment = Category.create(name: "Entertainment")

User.destroy_all

moi = User.create(email: "lengelle@gmail.com", password: "151080")
tata = User.create(email: "tata@yoyo.fr", password: "tatayoyo")

Product.destroy_all

Product.create(name: "Kudoz", url: "http://www.getkudoz.com", tagline:"Le tinder du recrutement", category: @business, user: tata)
Product.create(name: "Tinder", url: "http://www.tinder.com", tagline:"Le kudoz du dating", category: @lifestyle, user: moi)
Product.create(name: "Tatayoyo", url: "http://www.betatayoyo.com", tagline:"I'm no tatayoyo", category: @entertainment, user: moi)
Product.create(name: "USlide", url: "http://www.uslide.com", tagline:"Youtube is not good for education", category: @lifestyle, user: tata)
