# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
{first_name: "Sarah", last_name: "Jones", username: "sarah_j", email: "sarah@example.com", password: "password"},
{first_name: "Emily", last_name: "Smith", username: "emily_s", email: "emily@example.com", password: "password"},
{first_name: "Bridget", last_name: "Johnson", username: "bridget_j", email: "bridget@example.com", password: "password"},
{first_name: "Caroline", last_name: "Clark", username: "caroline_c", email: "caroline@example.com", password: "password"},
{first_name: "Melanie", last_name: "Simpson", username: "melanie_s", email: "melanie@example.com", password: "password"},
])
