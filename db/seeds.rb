# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Admin.create!(name: 'Admin', last_name: 'Iprop', email: 'admin@example.com', password: '123456', password_confirmation: '123456')

Tag.create(tag_name:'Casas')
Tag.create(tag_name:'Countries y barrios cerrados')
Tag.create(tag_name:'Cocheras')
Tag.create(tag_name:'Bauleras')
Tag.create(tag_name:'Guarderías náuticas')
Tag.create(tag_name:'Terrenos')
Tag.create(tag_name:'Inmuebles industriales')
Tag.create(tag_name:'Oficinas')
Tag.create(tag_name:'Depósitos')
Tag.create(tag_name:'Locales comerciales')
Tag.create(tag_name:'Fondo de comercio')
Tag.create(tag_name:'Estacionamiento')

Video.create(url: '', description: '')
Video.create(url: '', description: '')
Video.create(url: '', description: '')
Video.create(url: '', description: '')