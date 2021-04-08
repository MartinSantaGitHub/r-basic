f <- function(x){
  x = x + 1;
  x = x + 1;
  x = x + 1;
  x = x + 1;
  x = x + 1
  x
}

p1 = function(a, b, c){
  (c-b) / a
}

p2 = function(a, b, c){
  c-b %/% a
}

y = (3 * exp(1)) - pi
x = round(y, 3)

print(x)

z = (2+3i)^2 / (5+8i)

comp1 = (2+3i)^2
comp2 = (5+8i)
comp3 = comp1 / comp2
comp4 = Mod(comp3)
modulo = round(comp4, 3)


# Obtengo los segundos
m <- 250000000 %/% 60
s <- 250000000 %% 60
s

# Obtengo los minutos
h <- m %/% 60
m <- m %% 60
m

# Obtengo las horas
d <- h %/% 24
h <- h %% 24
h

# Calculo cuantos años serían
a <- d %/% 365
a <- 2018 + a
a

# Calculo cuantos días han transcurrido a partir del año obtenido.
# El año obtenido es 2025. Pues bien, entre 2018 y 2025 pasaron dos años bisiestos (2020 y 2024).
d <- d - (365 * 5) - (366 * 2)
d

# Obtengo cuantos días faltan para terminar el año
d_rest <- 365 - d
d_rest

# El valor de d_rest es 29. Eso significa que faltan 29 días para terminar el año, con lo cual
# estamos en diciembre. Restando 31 (cantidad de días de diciembre) menos 29 nos da el día calendario de diciembre, 
# 2 de diciembre. Pero ese cálculo equivale a días completos y de los cálculos anteriores, vimos que han pasado 12 horas, 
# por lo cual nos hallamos en realidad en la fecha 3 de diciembre.

sprintf("Llegaríamos al día 3 de diciembre del año %d a las %d horas %d minutos y %d segundos", a, h, m, s)




