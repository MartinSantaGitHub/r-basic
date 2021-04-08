Harry = -10:27
elem_ind_7 = Harry[7]
elem_ind_7

# max_suc = cumsum((100 * 2^200) -(7 * 3^200))
# max_suc

n=0:200
max(100*2^n-7*3^n)

suc = 0:40
x = sapply(suc, FUN = function(n){3 * 5^n - 1})
x
which(x > 3.5)
#x[which(x > 3.5)]

n=0:40
x=3*5^n-1
which(x>3.5)

datos_num_img = function(num_img){
  real_part = Re(num_img)
  img_part = Im(num_img)
  modulus = Mod(num_img)
  argument = Arg(num_img)
  complex_conjugate = Conj(num_img)
  vec = sprintf("%.2f", c(real_part, img_part, modulus, argument))
  c(vec, complex_conjugate)
}
datos_num_img(2+3i)

info = function(x){print(c(Re(x),Im(x),Mod(x),Arg(x),Conj(x)),2)}
info(2+3i)

quadratic_equation = function(A,B,C){
  root = sqrt((B^2 - 4*A*C))
  divisor = 2*A
  
  x1 = (-B - root) / divisor
  x2 = (-B + root) / divisor
  
  c(x1, x2)
}
quadratic_equation(1,4,-5)

solu2 = function(A,B,C){c(((-B+sqrt(B^2-4*A*C))/(2*A)),((-B-sqrt(B^2-4*A*C))/(2*A)))}
solu2(1,4,-5)

vec = c(0,9,98,2,6,7,5,19,88,20,16,0)

# 3 opciones diferentes para calcular el subvector c(9,19,20,16)
sub_vec_1 = vec[which(vec == 9 | vec == 19 | vec == 20 | vec == 16)]
sub_vec_2 = vec[which(vec >= 9 & vec <= 20)]
sub_vec_3 = vec[-c(1,3,4,5,6,7,9,12)]
sub_vec_1
sub_vec_2
sub_vec_3

# Entradas pares
sub_vec_4 = vec[which(vec %% 2 == 0)]
sub_vec_4

# Entradas que no son pares y mayores que 20
sub_vec_5 = vec[which((vec %% 2 != 0) & (vec > 20))]
sub_vec_5

# Dónde toma vec su valor máximo
max_index = which.max(vec)
max_index

# Dónde toma vec sus valores mínimos
sub_vec_6 = which(vec == min(vec))
sub_vec_6

A <- rbind(c(1,3),c(2,4))
B <- A + A
C <- A %*% B %*% A
C[2,2]

B <- rbind(c(2,4,-6),c(0,0,3), c(0,-2,5))
eigen(B)$values

C <- cbind(c(-48,-134,-194), c(35,95,133), c(-12,-32,-44))
round(eigen(C)$vectors, digits = 3)

D <- rbind(c(-2,-8,-2,3), c(-3,-6,-1,2), c(-9,-22,-3,7), c(-18,-44,-8,15))
qr(D)$rank

