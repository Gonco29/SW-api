# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Cleaning Seed"
Character.destroy_all if Rails.env.development?

puts "Creating Characters"

anakin = {name: "Anakin Skywalker", actor: "Anakin Skywalker", info: "En un principio Anakin fue un Caballero Jedi al servicio de la República para ser corrompido por Darth Sidious. Es el padre de Luke Skywalker y de la princesa Leia. Hasta su caída en desgracia, Anakin fue un gran guerrero y un hombre divertido y simpático, aunque ya mostraba frecuentes ataques de ira y arrogancia, que le acabarían conduciendo al Lado oscuro. Fue un gran héroe de guerra, combatiendo por la República en las Guerras Clon.", image_url: "https://i.pinimg.com/originals/6a/34/cb/6a34cb853cb1b91ec9888b9fd4b66a85.jpg"}
yoda = {name: "Yoda", actor: "Frank Oz", info: "Uno de los más renombrados y poderosos maestros Jedi durante toda la historia de la Galaxia, y uno de los pocos Jedis de la República Galáctica en sobrevivir hasta la Guerra Civil Galáctica. Siendo el maestro más perceptivo de la Orden, él ejerció como Gran Maestro durante las Guerras Clon y duró en el cargo hasta la Gran Purga Jedi, después de la cual escapó para ocultarse de esta en el planeta Dagobah en el cual vivió hasta su muerte.", image_url: "https://i.pinimg.com/originals/ba/f3/49/baf349e419212b2c5316a9de742ef5d9.jpg"}
ahsoka = {name: "Ahsoka Tano", actor: "Rosario Dawson", info: "Ahsoka Tano, apodada por su Maestro como «Sabionda», «Chulita» o «Mocosa», fue una Padawan Jedi togruta que, tras las Guerras Clon, ayudó a establecer una red de células rebeldes para combatir al Imperio Galáctico. Tano fue descubierta en su planeta natal Shili por el Maestro Jedi Plo Koon, quien la llevó al Templo Jedi de Coruscant para que fuese entrenada en las artes Jedi. Después del estallido de las Guerras Clon, el Gran Maestro Jedi Yoda asignó a la joven Tano como Padawan del Caballero Jedi Anakin Skywalker.", image_url: "https://w0.peakpx.com/wallpaper/634/41/HD-wallpaper-ahsoka-tano-ahsoka-clone-wars-padawan-star-wars-tano.jpg"}
vader = {name: "Darth Vader", actor: "	James Earl Jones", info: "Vader a pesar de ser de una maldad tan pura, aún conserva sus sentimientos a su fallecida esposa Padme Amidala, como después a su hijo Luke. También tiene una extraña y desconocida obsesión por el orden y en menor medida la justicia en la galaxia sea por intenciones benévolas o lo contrario. Al principio de llevar su armadura biónica odiaba su personalidad de Darth Vader tanto como la armadura propia hasta el punto de dudar si había elegido un camino correcto, aunque después unos cinco años después de la fundación del Imperio Galáctico acepta la retorcida ideología del lado oscuro de La Fuerza hasta el punto de aceptar su armadura y purgar casi todo lo que quedaba de su luz interior.", image_url: "https://w0.peakpx.com/wallpaper/100/795/HD-wallpaper-darth-vader-star-wars-vader.jpg"}
obiwan = {name: "Obi-Wan Kenobi", actor: " Ewan McGregor", info: "Kenobi es un maestro jedi de la antigua República Galáctica, y maestro de Anakin y Luke Skywalker. Obi-Wan es una figura clave en las Guerras Clon, donde fue conocido como 'El Negociador'; en la práctica extinción de los Jedi, en la caída de la República Galáctica y en la lucha de la Alianza Rebelde contra el posterior Imperio Galáctico.", image_url: "https://media.vogue.fr/photos/606dca7e47f477da2ff11fcf/2:3/w_2240,c_limit/010_A7A08C89_416.jpg"}
luke = {name: "Luke Skywalker", actor: "Mark Hamill", info: "Es el único hijo varón de Anakin Skywalker y la senadora Padmé Amidala (antigua reina del planeta Naboo). Tiene una hermana melliza llamada Leia Organa, de la cual fue separado al nacer con el objetivo de ocultarlo y protegerlo del emperador Palpatine (Darth Sidious) y del Imperio Galáctico. Conocedor intuitivo de la Fuerza, cuyo papel se acrecienta como poderoso maestro capaz de rehacer la Orden Jedi, y ser uno de los héroes de guerra más importantes de la República. Es considerado el último caballero Jedi y uno de los más poderosos de todos los tiempos.", image_url: "https://w0.peakpx.com/wallpaper/468/241/HD-wallpaper-luke-skywalker-luke-skywalker-star-wars.jpg"}
palpatine = {name: "Emperor Palpatine", actor: "Ian McDiarmid", info: "Un carismático senador de Naboo que usa el engaño y la manipulación política para ascender a la posición de «canciller supremo de la República Galáctica» para afianzarse en el poder. Aunque antes de convertirse en emperador pareciera ser un servidor público bien intencionado y partidario de la democracia,cuando en realidad es Darth Sidious, Señor Oscuro de los Sith", image_url: "https://wallpaperaccess.com/full/5272025.jpg"}
kylo = {name: "Kylo Ren", actor: "	Adam Driver ", info: "Ben Solo se convierte en un guerrero oscuro, con un poderoso dominio de la Fuerza después de unirse a los Caballeros de Ren, y adoptando el nombre de Kylo Ren. Se vuelve el nuevo Líder Supremo de la Primera Orden tras asesinar a Snoke. Kylo a pesar de creer ciegamente en hacer lo correcto, admite humildemente que es malvado.", image_url: "https://i.pinimg.com/564x/49/c5/b2/49c5b23b980e42beb2f7b298be9b5240.jpg"}
rey = {name: "Rey", actor: "Daisy Ridley", info: "Rey se presenta como una chatarrera postadolescente que fue abandonada en el planeta Jakku cuando era una niña. Más tarde se involucra en el conflicto de la Resistencia con la Primera Orden. Poderosa con la Fuerza, Rey se entrena para ser un Jedi bajo Luke Skywalker y la General Leia, y se enfrenta a adversarios como Kylo Ren, el Líder Supremo Snoke y el Emperador Palpatine resucitado, quien revela como su abuelo", image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/star-wars-rey-nueva-imagen-1568714940.jpg?resize=768:*"}


[anakin, yoda, ahsoka, vader, obiwan, luke, palpatine, kylo, rey].each do |attributes|
  character = Character.create!(attributes)
  puts "Created #{character.name}"
end

puts "Finished!"
