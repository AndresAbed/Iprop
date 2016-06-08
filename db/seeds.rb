# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Admin.create!(name: 'Admin', email: 'admin@example.com', password: '12346', password_confirmation: '12346')

Appraisal.create(neighborhood: 'Agronomía', min_price: '1700', max_price: '2200')
Appraisal.create(neighborhood: 'Almagro', min_price: '1800', max_price: '2250')
Appraisal.create(neighborhood: 'Balvanera', min_price: '1700', max_price: '2200')
Appraisal.create(neighborhood: 'Barracas', min_price: '1700', max_price: '2200')
Appraisal.create(neighborhood: 'Belgrano', min_price: '1700', max_price: '2200')
Appraisal.create(neighborhood: 'Boca', min_price: '1700', max_price: '2200')
Appraisal.create(neighborhood: 'Boedo', min_price: '1700', max_price: '2200')
Appraisal.create(neighborhood: 'Caballito', min_price: '1700', max_price: '2200')
Appraisal.create(neighborhood: 'Chacarita', min_price: '1700', max_price: '2200')
Appraisal.create(neighborhood: 'Coghlan', min_price: '1700', max_price: '2200')
Appraisal.create(neighborhood: 'Colegiales', min_price: '1700', max_price: '2200')
Appraisal.create(neighborhood: 'Constitución', min_price: '1700', max_price: '2200')
Appraisal.create(neighborhood: 'Flores', min_price: '1700', max_price: '2200')
Appraisal.create(neighborhood: 'Floresta', min_price: '1700', max_price: '2200')
Appraisal.create(neighborhood: 'Liniers', min_price: '1700', max_price: '2200')
Appraisal.create(neighborhood: 'Monserrat', min_price: '1700', max_price: '2200')

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