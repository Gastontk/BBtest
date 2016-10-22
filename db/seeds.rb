# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


 a =User.create(first_name: 'Gaston', last_name: 'Kennedy', email: 'gastontk@hotmail.com', password: 'abcd1234', password_confirmation: 'abcd1234')


 b = Org.create(name: 'Seeded Group', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempora veritatis sint aliquid? Vel ipsa rem tempora veritatis obcaecati quod.', owner_id: a.id)
 a.orgs << b