# script que hace scroll automático de la página para grabar una demostración de cada sección

library(RSelenium)


# funciones
# # scroll hasta el elemento
# scrollear_elemento <- function(elemento = "#introduccion") {
#   remote$executeScript(paste("
# document.querySelector('", elemento, "').scrollIntoView({
#   behavior: 'smooth',
#   block: 'start' // Aligns the top of the element to the top of the viewport
# });
# "))
# }

# scroll hasta el elemento + offset
scrollear_elemento <- function(elemento = "#introduccion", 
                               scroll = 90) {
  remote$executeScript(paste("
const element = document.querySelector('", elemento, "');
  const y = element.getBoundingClientRect().top + window.scrollY - ", scroll, ";
  window.scrollTo({ top: y, behavior: 'smooth' });
"))
}

scrollear_manual <- function(scroll = 90) {
  remote$executeScript(paste("
window.scrollBy({
  top:", scroll, ",
  left: 0,
  behavior:  'smooth'
});")) 
}

# función de espera entre scrolls
espera <- function(largo = "larga") {
  if (largo == "larga") {
    Sys.sleep(1.1)
  } else if (largo == "corta") {
    Sys.sleep(0.7)
  }
}

# crear driver para controlar navegador
driver <- rsDriver(browser = "firefox", 
                   port = 4560L, verbose = F,
                   chromever = NULL, phantomver = NULL)

remote <- driver$client

# navegar al sitio
remote$navigate(url = "https://bastianolea.github.io/aprende_r/")

# remote$executeScript(paste("window.scrollBy(0, ", -50000, ");"))
# 
# # remote$executeScript(paste("window.scrollBy(0, ", 380, ",
remote$executeScript(paste("window.scroll(top: ", 80, ", behavior: 'smooth');"))
# 
# remote$executeScript(paste("window.scrollBy(0, ", 450, ");"))



scrollear_elemento("#introduccion")
espera()
scrollear_elemento("#obtener-r")
espera()
scrollear_manual(400)
espera()
scrollear_elemento("#basico")
espera()
scrollear_manual(400); espera("corta")
scrollear_manual(260); espera("corta")
scrollear_manual(260); espera("corta")
scrollear_manual(260); espera("corta")
scrollear_elemento("#trabajando-con-datos-en-r")
espera()
scrollear_manual(300); espera("corta")
scrollear_manual(280); espera("corta")
scrollear_manual(300); espera("corta")
scrollear_manual(340); espera("corta")
scrollear_elemento("#programación-básica-con-r")
espera()
scrollear_elemento("#visualización-de-datos-con-r")
espera()
scrollear_elemento("#intermedio")
espera()
scrollear_elemento("#ayudas-para-aprender-r")
espera()
scrollear_elemento("#apuntes")
espera()
scrollear_elemento("#libros-recomendados")
espera()
scrollear_elemento("#cursos")
espera()
scrollear_manual(420); espera("corta")
scrollear_manual(310); espera("corta")
scrollear_manual(300); espera("corta")
scrollear_elemento("#avanzado")
espera()
scrollear_manual(360)
espera()
scrollear_elemento("#libros-avanzados")
espera()
scrollear_manual(300); espera("corta")
espera()
scrollear_elemento("#manténte-al-día")
espera()
scrollear_elemento("#atrévete")
espera()
# volver arriba
scrollear_elemento("body")



# Aprende análisis de datos a tu ritmo y gratis! En esta página estoy reuniendo todos los contenidos que necesitas para aprender R por tu propia cuenta.
# 
# 💡 Nuevos tutoriales: creación de variables y cálculo de resúmenes estadísticos!
# 
#   Revisa el sitio y atrévete a ser autodidacta ✨ Todxs pueden aprender a programar, y R puede ser el complemento perfecto para tu carrera, especialmente si eres de ciencias sociales o humanidades!

#   