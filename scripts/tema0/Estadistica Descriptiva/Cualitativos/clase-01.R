x = factor(sample(1:5, size = 12, replace = TRUE), levels = 1:7)
x

resp = factor(sample(c("Si", "No"), size = 12, replace = TRUE), levels = c("Si", "No"))
resp

# table se denomina tabla de contingencia
t1 = table(x)
t1
t2 = table(resp)
t2

names(t1)
names(t2)

names(which(t1 == 4))
names(which(t1 == max(t1)))
names(which(t2 == max(t2)))
t1[3]
t1["7"]
t1["8"]

3*t1[2]

sum(t1)
sqrt(t2)

prop.table(t1)
prop.table(t2)

# Cuidado, se debe aplicar a al resultado de un table
prop.table(c(1,2,1,4,5,2,7,3,2,5))

y = c(1,1,1)
prop.table(table(y))

prop.table(y)

table(y) / length(y)

datos = factor(c(rep("H", 6), rep("M", 14)), levels = c("H", "M")) 
datos

frec_abs = table(datos)
frec_abs

frec_rel = prop.table(frec_abs)
frec_rel

moda = names(which(frec_abs == max(frec_abs)))
moda

sex = factor(sample(c("H", "M"), size = length(resp), replace = TRUE), levels = c("H", "M"))
t3 = table(resp, sex)
t3
t4 = table(sex, resp)
t4
t(t3)
t(t4)

t3[2,2]
t3["No","M"]

prop.table(t4)
prop.table(t4, margin = 1)
prop.table(t4, margin = 2)

library(vcd)
library(vcdExtra)
library(rgl)

cotabplot(HairEyeColor)
mosaic3d(HairEyeColor, type = "expected", box = TRUE, 
         main = "Gráfico de mosaico de la tabla HairEyeColor", col = c("pink", "lightblue"))
