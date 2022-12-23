# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Cleaning Seed'
Character.destroy_all if Rails.env.development?

puts 'Creating Characters'

anakin = {name: 'Anakin Skywalker', actor: 'Anakin Skywalker', info: 'En un principio Anakin fue un Caballero Jedi al servicio de la República para ser corrompido por Darth Sidious. Es el padre de Luke Skywalker y de la princesa Leia. Hasta su caída en desgracia, Anakin fue un gran guerrero y un hombre divertido y simpático, aunque ya mostraba frecuentes ataques de ira y arrogancia, que le acabarían conduciendo al Lado oscuro. Fue un gran héroe de guerra, combatiendo por la República en las Guerras Clon.', image_url: 'https://i.pinimg.com/originals/6a/34/cb/6a34cb853cb1b91ec9888b9fd4b66a85.jpg'}
yoda = {name: 'Yoda', actor: 'Frank Oz', info: 'Uno de los más renombrados y poderosos maestros Jedi durante toda la historia de la Galaxia, y uno de los pocos Jedis de la República Galáctica en sobrevivir hasta la Guerra Civil Galáctica. Siendo el maestro más perceptivo de la Orden, él ejerció como Gran Maestro durante las Guerras Clon y duró en el cargo hasta la Gran Purga Jedi, después de la cual escapó para ocultarse de esta en el planeta Dagobah en el cual vivió hasta su muerte.', image_url: 'https://i.pinimg.com/originals/ba/f3/49/baf349e419212b2c5316a9de742ef5d9.jpg'}
ahsoka = {name: 'Ahsoka Tano', actor: 'Rosario Dawson', info: 'Ahsoka Tano, apodada por su Maestro como «Sabionda», «Chulita» o «Mocosa», fue una Padawan Jedi togruta que, tras las Guerras Clon, ayudó a establecer una red de células rebeldes para combatir al Imperio Galáctico. Tano fue descubierta en su planeta natal Shili por el Maestro Jedi Plo Koon, quien la llevó al Templo Jedi de Coruscant para que fuese entrenada en las artes Jedi. Después del estallido de las Guerras Clon, el Gran Maestro Jedi Yoda asignó a la joven Tano como Padawan del Caballero Jedi Anakin Skywalker.', image_url: 'https://w0.peakpx.com/wallpaper/634/41/HD-wallpaper-ahsoka-tano-ahsoka-clone-wars-padawan-star-wars-tano.jpg'}
vader = {name: 'Darth Vader', actor: '	James Earl Jones', info: 'Vader a pesar de ser de una maldad tan pura, aún conserva sus sentimientos a su fallecida esposa Padme Amidala, como después a su hijo Luke. También tiene una extraña y desconocida obsesión por el orden y en menor medida la justicia en la galaxia sea por intenciones benévolas o lo contrario. Al principio de llevar su armadura biónica odiaba su personalidad de Darth Vader tanto como la armadura propia hasta el punto de dudar si había elegido un camino correcto, aunque después unos cinco años después de la fundación del Imperio Galáctico acepta la retorcida ideología del lado oscuro de La Fuerza hasta el punto de aceptar su armadura y purgar casi todo lo que quedaba de su luz interior.', image_url: 'https://w0.peakpx.com/wallpaper/100/795/HD-wallpaper-darth-vader-star-wars-vader.jpg'}
obiwan = {name: 'Obi-Wan Kenobi', actor: ' Ewan McGregor', info: 'Kenobi es un maestro jedi de la antigua República Galáctica, y maestro de Anakin y Luke Skywalker. Obi-Wan es una figura clave en las Guerras Clon; en la práctica extinción de los Jedi, en la caída de la República Galáctica y en la lucha de la Alianza Rebelde contra el posterior Imperio Galáctico.', image_url: 'https://media.vogue.fr/photos/606dca7e47f477da2ff11fcf/2:3/w_2240,c_limit/010_A7A08C89_416.jpg'}
luke = {name: 'Luke Skywalker', actor: 'Mark Hamill', info: 'Es el único hijo varón de Anakin Skywalker y la senadora Padmé Amidala (antigua reina del planeta Naboo). Tiene una hermana melliza llamada Leia Organa, de la cual fue separado al nacer con el objetivo de ocultarlo y protegerlo del emperador Palpatine (Darth Sidious) y del Imperio Galáctico. Conocedor intuitivo de la Fuerza, cuyo papel se acrecienta como poderoso maestro capaz de rehacer la Orden Jedi, y ser uno de los héroes de guerra más importantes de la República. Es considerado el último caballero Jedi y uno de los más poderosos de todos los tiempos.', image_url: 'https://w0.peakpx.com/wallpaper/468/241/HD-wallpaper-luke-skywalker-luke-skywalker-star-wars.jpg'}
palpatine = {name: 'Emperor Palpatine', actor: 'Ian McDiarmid', info: 'Un carismático senador de Naboo que usa el engaño y la manipulación política para ascender a la posición de «canciller supremo de la República Galáctica» para afianzarse en el poder. Aunque antes de convertirse en emperador pareciera ser un servidor público bien intencionado y partidario de la democracia,cuando en realidad es Darth Sidious, Señor Oscuro de los Sith', image_url: 'https://wallpaperaccess.com/full/5272025.jpg'}
kylo = {name: 'Kylo Ren', actor: '	Adam Driver ', info: 'Ben Solo se convierte en un guerrero oscuro, con un poderoso dominio de la Fuerza después de unirse a los Caballeros de Ren, y adoptando el nombre de Kylo Ren. Se vuelve el nuevo Líder Supremo de la Primera Orden tras asesinar a Snoke. Kylo a pesar de creer ciegamente en hacer lo correcto, admite humildemente que es malvado.', image_url: 'https://i.pinimg.com/564x/49/c5/b2/49c5b23b980e42beb2f7b298be9b5240.jpg'}
rey = {name: 'Rey', actor: 'Daisy Ridley', info: 'Rey se presenta como una chatarrera postadolescente que fue abandonada en el planeta Jakku cuando era una niña. Más tarde se involucra en el conflicto de la Resistencia con la Primera Orden. Poderosa con la Fuerza, Rey se entrena para ser un Jedi bajo Luke Skywalker y la General Leia, y se enfrenta a adversarios como Kylo Ren, el Líder Supremo Snoke y el Emperador Palpatine resucitado, quien revela como su abuelo', image_url: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/star-wars-rey-nueva-imagen-1568714940.jpg?resize=768:*'}
leia = {name: 'Leia Organa', actor: 'Carrie Fisher', info: 'La Princesa Leia Organa de Alderaan. Es hija de la senadora Padmé Amidala y del Caballero Jedi Anakin Skywalker, hermana melliza de Luke Skywalker y esposa de Han Solo. Adoptada por el senador Bail Organa y su esposa Breha después del fallecimiento de su madre en el parto y la transformación de su padre en Darth Vader, fue separada de su hermano Luke al nacer, con el objetivo de ocultarlos y protegerlos del emperador Palpatine (Darth Sidious) y del Imperio Galáctico. Al crecer se convirtió en la líder de la Alianza Rebelde.', image_url: 'https://i.pinimg.com/474x/55/87/e1/5587e12ecf397985ea4efd0df24cb25d.jpg'}
han = {name: 'Han Solo', actor: 'Harrison Ford ', info: 'Un hombre humano contrabandista que se convirtió en un líder en la Alianza para Restaurar la República y una figura instrumental en la derrota del Imperio Galáctico durante la Guerra Civil Galáctica. Él procedía de Corellia y se convirtió en un contrabandista al servicio de Jabba el Hutt, incluso completando el Corredor de Kessel en menos de trece parsecs con su preciada nave, el Halcón Milenario. Era el yerno del Caballero Jedi caído Anakin Skywalker y la Senadora Padmé Amidala, esposo de la Princesa Leia Organa, cuñado del Maestro Jedi Luke Skywalker, padre de Ben Solo, rivales y amigos cercanos de su contrabandista Lando Calrissian y mejores amigos del WookieChewbacca, su copiloto de confianza que juró una deuda de vida con el contrabandista corelliano.', image_url: 'https://i.pinimg.com/474x/bb/ea/e8/bbeae8c5675b9c7fa4c49b7404b57594.jpg'}
maul = {name: 'Darth Maul', actor: 'Sam Witwer', info: 'Maul fue un zabrak dathomiriano sensible a la Fuerza y un guerrero del lado oscuro que sirvió como el aprendiz Señor Oscuro de los Sith Darth Maul durante los últimos años de la República Galáctica y reinó como señor del crimen durante el dominio del Imperio Galáctico. El hijo de la Madre Talzin de las Hermanas de la Noche, Maul fue tomado a una edad temprana por el Señor Oscuro de los Sith Darth Sidious, quien lo ungió como su primer aprendiz Sith, Darth Maul. Gracias a su entrenamiento, Maul se hizo fuerte en el lado oscuro de la Fuerza, convirtiéndose en un duelista y asesino experto que anhelaba revelar la continuada supervivencia de los Sith a la Orden Jedi. ', image_url: 'https://i.pinimg.com/474x/47/7d/51/477d51544188f32402e73109b3510ad6.jpg'}
mando = {name: 'Din Djarin', actor: 'Pedro Pascal', info: 'Din Djarin, comúnmente conocido como "el Mandaloriano", fue un hombre humano mandaloriano que trabajó como cazarrecompensas durante la Era de la Nueva República. Con su armadura mandaloriana y distintivo casco de beskar, Djarin estaba bien equipado y era enigmático—un extranjero cuyo pasado está rodeado de misterio para los demás. Huérfano durante la Era de la República y criado como huérfano por los Hijos de la Guardia, fue entrenado para convertirse en un guerrero mandaloriano y eventualmente se unió a la Tribu, que operaba en Nevarro pero en secreto era parte del culto de los Hijos de la Guardia. Djarin se convirtió en un hombre curtido en combate, de pocas palabras, y en un cazador formidable en una galaxia cada vez más peligrosa.', image_url: 'https://i.pinimg.com/474x/8e/ed/60/8eed600b9ef1760900c276caf35a3e11.jpg'}
ezra = {name: 'Ezra Bridger', actor: 'Eman Esfandi', info: 'Ezra Bridger fue un Padawan Jedi humano que se convirtió en un luchador rebelde y un líder revolucionario durante la rebelión inicial contra el Imperio Galáctico. Nació de Ephraim y Mira Bridger, cuyas críticas públicas al Imperio provocaron su encarcelación, dejando a Bridger como huérfano en Lothal cuando era un niño. Ezra se unió a la tripulación rebelde del Espíritu en el 5 ABY y se convirtió en el aprendiz Jedi de Kanan Jarrus. Las habilidades de Bridger crecieron rápidamente, y un mensaje de esperanza que él retransmitió inspiró a un gran número de células rebeldes a trabajar juntas para luchar contra el Imperio.', image_url: 'https://i.pinimg.com/474x/80/9c/88/809c8887b45e149b168bce22253b5dda.jpg'}
andor = {name: 'Cassian Andor', actor: 'Diego Luna', info: 'Cassian Jeron Andor fue un hombre humano operativo de la Alianza para Restaurar la República que fue recordado como un héroe después de su sacrificio para asegurar los planos de la Estrella de la Muerte del Imperio Galáctico en la Batalla de Scarif. Andor, un consumado espía y asesino, era muy respetado dentro de la Rebelión y el Alto Mando de la Alianza le confiaba la dirección de las misiones de Inteligencia de la Alianza.', image_url: 'https://i.pinimg.com/474x/03/0f/46/030f4626311ac30fa2fecc8fd4f7db8e.jpg'}
grogu = {name: 'Grogu', actor: 'David Acord', info: 'Grogu, conocido por muchos simplemente como «el Niño», fue un Iniciado Jedi y expósito mandaloriano sensible a la Fuerza que pertenecía a la misma especie del Gran Maestro Jedi Yoda y la Maestra Jedi Yaddle. Grogu nació alrededor de 41 ABY, y fue criado en el Templo Jedi en Coruscant. Fue mantenido en un escondite operado por mercenarios nikto en Arvala-7 durante la Era de la Nueva República, habiendo sobrevivido al asedio del Templo Jedi décadas atrás. Mientras era todavía un infante a la edad de cincuenta años, él fue buscado, a petición del moff Gideon, por un Imperial que contrató a un cazarrecompensas mandaloriano llamado Din Djarin para recuperarlo.', image_url: 'https://i.pinimg.com/474x/f9/c0/95/f9c095f2a147024f7e91cb0b72e1b4f3.jpg'}
chewie = {name: 'Chewbacca', actor: 'Peter Mayhew', info: 'Fue un guerrero wookiee, un contrabandista y un luchador de resistencia que peleó en las Guerras Clon, la Guerra Civil Galáctica y el Guerra Fría. Fue criado en el planeta Kashyyyk y se convirtió en un líder militar. Durante las Guerras Clon, fue capturado por esclavistas trandoshanos y hecho prisionero en Wasskah, donde trabajó con otra cautiva, la Comandante Jedi Ahsoka Tano, para escapar. Más tarde comandó a las fuerzas wokiees durante la Batalla de Kashyyyk junto al Gran Ejército de la República, liderado por el Maestro Jedi Yoda. Durante la batalla, una de las últimas de la guerra, los soldados clon de Yoda recibieron la Orden 66 del Canciller Supremo Sheev Palpatine y, con la ayuda de Chewbacca, Yoda escapó de Kashyyyk y la destrucción de la Orden Jedi.', image_url: 'https://i.pinimg.com/474x/6b/99/69/6b9969aedd6ca5203547e9dc2b8ef67d.jpg'}
# leia = {name: '', actor: '', info: '', image_url: ''}





[anakin, yoda, ahsoka, vader, obiwan, luke, palpatine, kylo, rey, leia, han, maul, mando, ezra, andor, grogu, chewie].each do |attributes|
  character = Character.create!(attributes)
  puts 'Created #{character.name}'
end

puts 'Finished!'
