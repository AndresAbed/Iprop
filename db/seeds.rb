# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Admin.create!(name: 'Admin', last_name: 'Iprop', email: 'admin@example.com', password: '123456', password_confirmation: '123456')

Tag.create(name:'Casas')
Tag.create(name:'Departamentos')
Tag.create(name:'Countries y barrios cerrados')
Tag.create(name:'Cocheras')
Tag.create(name:'Bauleras')
Tag.create(name:'Guarderías náuticas')
Tag.create(name:'Terrenos')
Tag.create(name:'Inmuebles industriales')
Tag.create(name:'Oficinas')
Tag.create(name:'Depósitos')
Tag.create(name:'Locales comerciales')
Tag.create(name:'Fondo de comercio')
Tag.create(name:'Estacionamiento')

Video.create(url: '', description: '')
Video.create(url: '', description: '')
Video.create(url: '', description: '')
Video.create(url: '', description: '')