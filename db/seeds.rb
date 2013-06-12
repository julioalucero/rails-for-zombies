# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Zombie.find_or_create_by_name(name: 'julio',  graveyard: 'municipal')
Zombie.find_or_create_by_name(name: 'eloy',   graveyard: 'provincial')
Zombie.find_or_create_by_name(name: 'manuel', graveyard: 'municipal')
Zombie.find_or_create_by_name(name: 'pablo',  graveyard: 'provincial')

first_zombie = Zombie.first.id
last_zombie  = Zombie.first.id

Tweet.find_or_create_by_status(zombie: Zombie.order("RANDOM()").first,  status: 'Estoy muy contento hoy')
Tweet.find_or_create_by_status(zombie: Zombie.order("RANDOM()").first,  status: 'Mi mejor amigo se fue')
Tweet.find_or_create_by_status(zombie: Zombie.order("RANDOM()").first,  status: 'Que ganas de Comer un corazon')
Tweet.find_or_create_by_status(zombie: Zombie.order("RANDOM()").first,  status: 'Como me gusta la noche')
Tweet.find_or_create_by_status(zombie: Zombie.order("RANDOM()").first,  status: 'No soy dracula')
Tweet.find_or_create_by_status(zombie: Zombie.order("RANDOM()").first,  status: 'El tweet puede tener hasta 255 caracteres aparentemente')
Tweet.find_or_create_by_status(zombie: Zombie.order("RANDOM()").first,  status: '#mucharopa')
Tweet.find_or_create_by_status(zombie: Zombie.order("RANDOM()").first,  status: 'Ruby is the best @julioalucero')
Tweet.find_or_create_by_status(zombie: Zombie.order("RANDOM()").first,  status: 'Todos cortiso los tweets')
Tweet.find_or_create_by_status(zombie: Zombie.order("RANDOM()").first,  status: 'Algunos tienen errores')

Question.find_or_create_by_description(description: 'Cree un Array con todos los nombres, ej: julio, eloy, manuel, pablo')
Question.find_or_create_by_description(description: 'Ordene de mayor a menor por nombre')
Question.find_or_create_by_description(description: 'Ordene de mayor a menor')
