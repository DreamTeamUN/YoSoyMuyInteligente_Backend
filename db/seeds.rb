# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

1.times do

  TipoUsuario.create(id: 0, nombre: "Sistema")
  TipoUsuario.create(nombre: "Tutor")
  TipoUsuario.create(nombre: "Docente")
  TipoUsuario.create(nombre: "Estudiante")

  Programa.create(nombre: "Lectura")

  TipoActividad.create(nombre: "LogIn", descripcion: "Inicio de sesión en la aplicacion")
  TipoActividad.create(nombre: "LogOut", descripcion: "Finalizar sesión en la aplicacion")
  TipoActividad.create(nombre: "Inicio Leccion", descripcion: "Inicia una nueva repeticion de una leccion")
  TipoActividad.create(nombre: "Jugar", descripcion: "Empieza un nuevo juego")
  TipoActividad.create(nombre: "Crear entrada", descripcion: "Crea una nueva entrada para el foro")
  TipoActividad.create(nombre: "Publicar entrada", descripcion: "Publica una entrada previamente creada")
  TipoActividad.create(nombre: "Ver Estudiante", descripcion: "Revisa los datos relacionados a un estudiante")
  TipoActividad.create(nombre: "Dictar programa", descripcion: "Habilita un docente para dictar un nuevo programa")
  TipoActividad.create(nombre: "Crear aula", descripcion: "Crea una nueva aula para los estudiantes")
  TipoActividad.create(nombre: "Inscribir estudiante", descripcion: "Inscribe un estudiante a un aula creada")
  TipoActividad.create(nombre: "Eliminar estudiante", descripcion: "Elimina a un estudiante de un aula a la que esta inscrito")
  TipoActividad.create(nombre: "Eliminar Aula", descripcion: "Elimina un aula existente")

  TipoJuego.create(nombre: "Enlaces", descripcion: "Enlazar palabras con su respectiva imagen")
  TipoJuego.create(nombre: "Parejas Imagen", descripcion: "Loteria con las palabras y sus imagenes")
  TipoJuego.create(nombre: "Parejas Sonido", descripcion: "Loteria con las palabras y su verbalizacion")

  Archivo.create(id: 0, nombre: "default", tipo_archivo: "imagen", extension: "png", ruta: "/")

  NivelAcceso.create(id: 0, nombre: "PUBLICO")

  Usuario.create(id: 0, user: "sistema", password:"sistema", password_confirmation:"sistema",
          nombre: "sistema", email:"localhost@localhost.com", tipo_usuario_id: 0, archivo_id:0)

  o = Entrada.new(
    id: 0,
    publicado: false,
    abierto: false,
    ramificacion: 0,
    archivo_id: 0,
    nivel_acceso_id:0,
    usuario_id: 0
  )
  o.save!(:validate => false)


  Frase.create(frase: "mamá", leccion_id: 1)
  Frase.create(frase: "papá", leccion_id: 1)
  Frase.create(frase: "bebé", leccion_id: 1)
  Frase.create(frase: "casa", leccion_id: 1)
  Frase.create(frase: "feliz", leccion_id: 1)

  Frase.create(frase: "agua", leccion_id: 2)
  Frase.create(frase: "pie", leccion_id: 2)
  Frase.create(frase: "pato", leccion_id: 2)
  Frase.create(frase: "oso", leccion_id: 2)
  Frase.create(frase: "luna", leccion_id: 2)
  Frase.create(frase: "baño", leccion_id: 2)

  Frase.create(frase: "amor", leccion_id: 3)
  Frase.create(frase: "foto", leccion_id: 3)
  Frase.create(frase: "niño", leccion_id: 3)
  Frase.create(frase: "ojos", leccion_id: 3)
  Frase.create(frase: "león", leccion_id: 3)
  Frase.create(frase: "bien", leccion_id: 3)
  Frase.create(frase: "huevo", leccion_id: 3)

  Frase.create(frase: "corazón", leccion_id: 4)
  Frase.create(frase: "gato", leccion_id: 4)
  Frase.create(frase: "leche", leccion_id: 4)
  Frase.create(frase: "éxito", leccion_id: 4)
  Frase.create(frase: "dibujo", leccion_id: 4)
  Frase.create(frase: "fiesta", leccion_id: 4)
  Frase.create(frase: "helado", leccion_id: 4)
  Frase.create(frase: "gané", leccion_id: 4)

  Frase.create(frase: "bueno", leccion_id: 5)
  Frase.create(frase: "globo", leccion_id: 5)
  Frase.create(frase: "fácil", leccion_id: 5)
  Frase.create(frase: "espejo", leccion_id: 5)
  Frase.create(frase: "juguete", leccion_id: 5)
  Frase.create(frase: "lápiz", leccion_id: 5)
  Frase.create(frase: "Colombia", leccion_id: 5)
  Frase.create(frase: "dedo", leccion_id: 5)

  Frase.create(frase: "jirafa", leccion_id: 6)
  Frase.create(frase: "urgente", leccion_id: 6)
  Frase.create(frase: "mesa", leccion_id: 6)
  Frase.create(frase: "kilómetro", leccion_id: 6)
  Frase.create(frase: "adiós", leccion_id: 6)
  Frase.create(frase: "computador", leccion_id: 6)
  Frase.create(frase: "karate", leccion_id: 6)
  Frase.create(frase: "cama", leccion_id: 6)

  Frase.create(frase: "elefante", leccion_id: 7)
  Frase.create(frase: "mano", leccion_id: 7)
  Frase.create(frase: "balón", leccion_id: 7)
  Frase.create(frase: "ventana", leccion_id: 7)
  Frase.create(frase: "sol", leccion_id: 7)
  Frase.create(frase: "plato", leccion_id: 7)
  Frase.create(frase: "luz", leccion_id: 7)
  Frase.create(frase: "pluma", leccion_id: 7)

  Frase.create(frase: "televisor", leccion_id: 8)
  Frase.create(frase: "cocina", leccion_id: 8)
  Frase.create(frase: "sopa", leccion_id: 8)
  Frase.create(frase: "jabón", leccion_id: 8)
  Frase.create(frase: "cabeza", leccion_id: 8)
  Frase.create(frase: "dormir", leccion_id: 8)
  Frase.create(frase: "conejo", leccion_id: 8)
  Frase.create(frase: "lluvia", leccion_id: 8)

  Frase.create(frase: "cumplir", leccion_id: 9)
  Frase.create(frase: "brillante", leccion_id: 9)
  Frase.create(frase: "parque", leccion_id: 9)
  Frase.create(frase: "médico", leccion_id: 9)
  Frase.create(frase: "estufa", leccion_id: 9)
  Frase.create(frase: "delicioso", leccion_id: 9)
  Frase.create(frase: "puerta", leccion_id: 9)
  Frase.create(frase: "chocolate", leccion_id: 9)
  Frase.create(frase: "gallina", leccion_id: 9)
  Frase.create(frase: "avión", leccion_id: 9)

  Frase.create(frase: "zapatos", leccion_id: 10)
  Frase.create(frase: "teléfono", leccion_id: 10)
  Frase.create(frase: "policía", leccion_id: 10)
  Frase.create(frase: "barco", leccion_id: 10)
  Frase.create(frase: "queso", leccion_id: 10)
  Frase.create(frase: "banano", leccion_id: 10)
  Frase.create(frase: "perro", leccion_id: 10)
  Frase.create(frase: "nariz", leccion_id: 10)
  Frase.create(frase: "abajo", leccion_id: 10)
  Frase.create(frase: "hermano", leccion_id: 10)

  Frase.create(frase: "tigre", leccion_id: 11)
  Frase.create(frase: "restaurante", leccion_id: 11)
  Frase.create(frase: "amigo", leccion_id: 11)
  Frase.create(frase: "bailar", leccion_id: 11)
  Frase.create(frase: "llave", leccion_id: 11)
  Frase.create(frase: "libertad", leccion_id: 11)
  Frase.create(frase: "verdad", leccion_id: 11)
  Frase.create(frase: "edificio", leccion_id: 11)
  Frase.create(frase: "unión", leccion_id: 11)
  Frase.create(frase: "cronómetro", leccion_id: 11)

  Frase.create(frase: "muñeca", leccion_id: 12)
  Frase.create(frase: "iglesia", leccion_id: 12)
  Frase.create(frase: "equipo", leccion_id: 12)
  Frase.create(frase: "brújula", leccion_id: 12)
  Frase.create(frase: "universo", leccion_id: 12)
  Frase.create(frase: "arriba", leccion_id: 12)
  Frase.create(frase: "navidad", leccion_id: 12)
  Frase.create(frase: "delfin", leccion_id: 12)
  Frase.create(frase: "zanahoria", leccion_id: 12)
  Frase.create(frase: "Washington", leccion_id: 12)

  Frase.create(frase: "Yo puedo", leccion_id: 13)
  Frase.create(frase: "te amo", leccion_id: 13)
  Frase.create(frase: "estoy feliz", leccion_id: 13)
  Frase.create(frase: "aprendo rápido", leccion_id: 13)
  Frase.create(frase: "muchas gracias", leccion_id: 13)
  Frase.create(frase: "tengo éxito", leccion_id: 13)
  Frase.create(frase: "te quiero", leccion_id: 13)
  Frase.create(frase: "soy campeón", leccion_id: 13)
  Frase.create(frase: "color rojo", leccion_id: 13)
  Frase.create(frase: "soy libre", leccion_id: 13)
  Frase.create(frase: "hablo claro", leccion_id: 13)
  Frase.create(frase: "vuelve pronto", leccion_id: 13)

  Frase.create(frase: "corazón valiente", leccion_id: 14)
  Frase.create(frase: "nos ayudamos", leccion_id: 14)
  Frase.create(frase: "caminemos juntos", leccion_id: 14)
  Frase.create(frase: "clima frío", leccion_id: 14)
  Frase.create(frase: "camisate blanca", leccion_id: 14)
  Frase.create(frase: "hago silencio", leccion_id: 14)
  Frase.create(frase: "leo las palabras", leccion_id: 14)
  Frase.create(frase: "buenas noticias", leccion_id: 14)
  Frase.create(frase: "somos ganadores", leccion_id: 14)
  Frase.create(frase: "pantalón negro", leccion_id: 14)
  Frase.create(frase: "uso la crayola", leccion_id: 14)
  Frase.create(frase: "un gran logro", leccion_id: 14)

  Frase.create(frase: "hago ejercicio", leccion_id: 15)
  Frase.create(frase: "soy responsable", leccion_id: 15)
  Frase.create(frase: "desayunemos juntos", leccion_id: 15)
  Frase.create(frase: "pasto verde", leccion_id: 15)
  Frase.create(frase: "sigo adelante", leccion_id: 15)
  Frase.create(frase: "¿quieres helado?", leccion_id: 15)
  Frase.create(frase: "respiro profundo", leccion_id: 15)
  Frase.create(frase: "somos buenos", leccion_id: 15)
  Frase.create(frase: "hace calor", leccion_id: 15)
  Frase.create(frase: "escucho música", leccion_id: 15)
  Frase.create(frase: "estoy tranquilo", leccion_id: 15)
  Frase.create(frase: "apaga la luz", leccion_id: 15)

  Frase.create(frase: "vamos al parque", leccion_id: 16)
  Frase.create(frase: "salsa de tomate", leccion_id: 16)
  Frase.create(frase: "soy muy inteligente", leccion_id: 16)
  Frase.create(frase: "ordeno mi cuerto", leccion_id: 16)
  Frase.create(frase: "leo un libro", leccion_id: 16)
  Frase.create(frase: "miramos las fotos", leccion_id: 16)
  Frase.create(frase: "voy a ganar", leccion_id: 16)
  Frase.create(frase: "noche de paz", leccion_id: 16)
  Frase.create(frase: "yo soy fuerte", leccion_id: 16)
  Frase.create(frase: "prendo la luz", leccion_id: 16)
  Frase.create(frase: "supero la prueba", leccion_id: 16)
  Frase.create(frase: "primero la tarea", leccion_id: 16)

  Frase.create(frase: "todos me quieren", leccion_id: 17)
  Frase.create(frase: "sale el sol", leccion_id: 17)
  Frase.create(frase: "vamos a jugar", leccion_id: 17)
  Frase.create(frase: "el cielo azul", leccion_id: 17)
  Frase.create(frase: "calle cerrada", leccion_id: 17)
  Frase.create(frase: "hablemos de paz", leccion_id: 17)
  Frase.create(frase: "estudio y aprendo", leccion_id: 17)
  Frase.create(frase: "hago las tareas", leccion_id: 17)
  Frase.create(frase: "el rey león", leccion_id: 17)
  Frase.create(frase: "limpiamos la casa", leccion_id: 17)
  Frase.create(frase: "me alimento bien", leccion_id: 17)
  Frase.create(frase: "lo hago mejor", leccion_id: 17)

  Frase.create(frase: "abro la puerta", leccion_id: 18)
  Frase.create(frase: "amo a mi familia", leccion_id: 18)
  Frase.create(frase: "el número uno", leccion_id: 18)
  Frase.create(frase: "busco lo mejor", leccion_id: 18)
  Frase.create(frase: "cuido mis cosas", leccion_id: 18)
  Frase.create(frase: "dame un abrazo", leccion_id: 18)
  Frase.create(frase: "cierro la nevera", leccion_id: 18)
  Frase.create(frase: "me encanta escribir", leccion_id: 18)
  Frase.create(frase: "¿cuántos años tienes?", leccion_id: 18)
  Frase.create(frase: "juguemos a gatear", leccion_id: 18)
  Frase.create(frase: "digo la verdad", leccion_id: 18)
  Frase.create(frase: "completo el crucigrama", leccion_id: 18)

  Frase.create(frase: "visito al odontólogo", leccion_id: 19)
  Frase.create(frase: "tengo buena memoria", leccion_id: 19)
  Frase.create(frase: "paseo por el campo", leccion_id: 19)
  Frase.create(frase: "regreso a casa", leccion_id: 19)
  Frase.create(frase: "observo una estrella", leccion_id: 19)
  Frase.create(frase: "trátame con cariño", leccion_id: 19)
  Frase.create(frase: "quiero tener amigos", leccion_id: 19)
  Frase.create(frase: "me levanto temprano", leccion_id: 19)
  Frase.create(frase: "un ratón gris", leccion_id: 19)
  Frase.create(frase: "muevo la cintura", leccion_id: 19)
  Frase.create(frase: "¿cómo te llamas?", leccion_id: 19)
  Frase.create(frase: "entreno para triunfar", leccion_id: 19)

  Frase.create(frase: "acato la ley", leccion_id: 20)
  Frase.create(frase: "con mucho gusto", leccion_id: 20)
  Frase.create(frase: "aprender es divertido", leccion_id: 20)
  Frase.create(frase: "construyo la paz", leccion_id: 20)
  Frase.create(frase: "cuido el bosque", leccion_id: 20)
  Frase.create(frase: "consulto los libros", leccion_id: 20)
  Frase.create(frase: "duermo con tranquilidad", leccion_id: 20)
  Frase.create(frase: "amo la libertad", leccion_id: 20)
  Frase.create(frase: "cumplo mi deber", leccion_id: 20)
  Frase.create(frase: "discúlpame por favor", leccion_id: 20)
  Frase.create(frase: "tengo una idea", leccion_id: 20)
  Frase.create(frase: "escucho con atención", leccion_id: 20)

  Frase.create(frase: "protejo el ecosistema", leccion_id: 21)
  Frase.create(frase: "pienso hacerlo mejor", leccion_id: 21)
  Frase.create(frase: "nunca me rendiré", leccion_id: 21)
  Frase.create(frase: "imagino cosas lindas", leccion_id: 21)
  Frase.create(frase: "disfruto el trabajo", leccion_id: 21)
  Frase.create(frase: "comprendo todo lo que leo", leccion_id: 21)
  Frase.create(frase: "trabajo por mi país", leccion_id: 21)
  Frase.create(frase: "vivo con entusiasmo", leccion_id: 21)
  Frase.create(frase: "sirvo con alegría", leccion_id: 21)
  Frase.create(frase: "hágame el favor", leccion_id: 21)
  Frase.create(frase: "cuido la naturaleza", leccion_id: 21)
  Frase.create(frase: "actúo con humildad", leccion_id: 21)
  Frase.create(frase: "la vida es bella", leccion_id: 21)
  Frase.create(frase: "trabajo en grupo", leccion_id: 21)
  Frase.create(frase: "entreno para triunfar", leccion_id: 21)

  Frase.create(frase: "mi mente cura mi cuerpo", leccion_id: 22)
  Frase.create(frase: "subo por las escaleras", leccion_id: 22)
  Frase.create(frase: "me pongo los zapatos", leccion_id: 22)
  Frase.create(frase: "miro por la ventana", leccion_id: 22)
  Frase.create(frase: "que rico hacer deporte", leccion_id: 22)
  Frase.create(frase: "actúo con prudencia", leccion_id: 22)
  Frase.create(frase: "lucho por un ideal", leccion_id: 22)
  Frase.create(frase: "me baño mi cuerpo", leccion_id: 22)
  Frase.create(frase: "tu eres mi amigo", leccion_id: 22)
  Frase.create(frase: "perdono a los demás", leccion_id: 22)
  Frase.create(frase: "tomo jugo de naranja", leccion_id: 22)
  Frase.create(frase: "pienso con claridad", leccion_id: 22)
  Frase.create(frase: "viajo por el mundo", leccion_id: 22)
  Frase.create(frase: "soy una persona sana", leccion_id: 22)
  Frase.create(frase: "explícalo de nuevo", leccion_id: 22)

  Frase.create(frase: "juego con mis amigos", leccion_id: 23)
  Frase.create(frase: "lo hago otra vez", leccion_id: 23)
  Frase.create(frase: "mi cuerpo es maravilloso", leccion_id: 23)
  Frase.create(frase: "mañana voy a ser mejor", leccion_id: 23)
  Frase.create(frase: "me cepillo los dientes", leccion_id: 23)
  Frase.create(frase: "respeto a las personas", leccion_id: 23)
  Frase.create(frase: "la matemática es fácil", leccion_id: 23)
  Frase.create(frase: "ayudo a los demás", leccion_id: 23)
  Frase.create(frase: "aprendo inglés fácil", leccion_id: 23)
  Frase.create(frase: "me preparo para ganar", leccion_id: 23)
  Frase.create(frase: "practico a diario", leccion_id: 23)
  Frase.create(frase: "cultivo la granja", leccion_id: 23)
  Frase.create(frase: "ahorro para el futuro", leccion_id: 23)
  Frase.create(frase: "esfuérzate por ser feliz", leccion_id: 23)
  Frase.create(frase: "cruzo por el puente", leccion_id: 23)

  Frase.create(frase: "el que busca encuentra", leccion_id: 24)
  Frase.create(frase: "estudiamos en el computador", leccion_id: 24)
  Frase.create(frase: "me encantan las matemáticas", leccion_id: 24)
  Frase.create(frase: "la unión hace la fuerza", leccion_id: 24)
  Frase.create(frase: "apoyo las buenas ideas", leccion_id: 24)
  Frase.create(frase: "tengo un espíritu fuerte", leccion_id: 24)
  Frase.create(frase: "la humanidad me necesita", leccion_id: 24)
  Frase.create(frase: "los problemas son oportunidades", leccion_id: 24)
  Frase.create(frase: "mi pensamiento es positivo", leccion_id: 24)
  Frase.create(frase: "comparto con los demás", leccion_id: 24)
  Frase.create(frase: "aire puro para respirar", leccion_id: 24)
  Frase.create(frase: "el maestro me enseña", leccion_id: 24)
  Frase.create(frase: "aprendo a multiplicar", leccion_id: 24)
  Frase.create(frase: "es bueno crecer", leccion_id: 24)
  Frase.create(frase: "toco un instrumento musical", leccion_id: 24)
  
  ##Solo para facilitar la creacion de aulas (temp)
  Usuario.create(user: "docente1", password:"docente1", password_confirmation:"docente1",
          nombre: "sistema", email:"docente1@localhost.com", tipo_usuario_id: 2)

  Usuario.create(user: "docente2", password:"docente2", password_confirmation:"docente2",
          nombre: "sistema", email:"docente2@localhost.com", tipo_usuario_id: 2)

  Docente.create(usuario_id: 1)
  Docente.create(usuario_id: 2)

  DocentePrograma.create(docente_id: 1, programa_id: 1)
  DocentePrograma.create(docente_id: 2, programa_id: 1)

end

i = 0
24.times do
  i = i+1
  Leccion.create(
    programa_id: 1,
    semana: i
  )
end
