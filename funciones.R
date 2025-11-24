div_libro <- function(titulo, imagen, url, texto) {
  div(class = "contenedor_libro",
      img(alt = titulo, 
          src = imagen, 
          class = "libro") |> 
        a(href = url),
      p(titulo, 
        class = "libro_titulo") |> 
        a(href = url, 
          class = "libro_titulo"),
      
      p(class = "libro_texto",
        texto)
  )
}


card_avanzado <- function(titulo,
                          icono,
                          texto,
                          footer) {
  
  card(id = "interna", 
       card_body(
         padding = "10px",
         
         h4(
           icon(icono, 
                class = "icono_texto"), 
           titulo),
         
         div(class = "avanzado",
             markdown(texto)
         ),
         
         if (length(footer) > 0) {
           div(class = "fondo",
               p("Ver más tutoriales de",
                 a(footer$titulo, 
                   href = footer$url, 
                   style = "color: #9F69CB; text-decoration-color: #9F69CB;")
               )
           )
         }
       )
  )
}



card_cursos <- function(titulo,
                        tipo = "gratis",
                        imagen,
                        url,
                        texto) {
  
  card(class = "contenedor_cursos",
       
       div(
         a(class = "cursos_titulo",
           markdown(titulo),
           href = url),
         span(tipo, class = "pildora")
       ),
       
       layout_columns( 
         markdown(texto),
         
         div(class = "contenedor_curso_imagen",
             a(href = url,
               img(src = imagen, class = "curso_imagen")
             )
         )
       )
  )
}