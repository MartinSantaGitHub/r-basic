x1 <- 1:20
x2 <- seq(0, 20, by = 2)
x1
x2
print(seq(17 ,98,length.out = 30), 4)
sum(x1)
cumsum(x1)
diff(x1)
x3 <- rev(sort(x1))
x4 <- sort(x1, decreasing = TRUE)
x3
x4
x5 <- c(1,3,5)
x1[-1]
x1[-x5]

# vec <- c(1,3,6,4,9,7)
# vec[which(vec > 2 & vec < 4)]

vec <- 1:12
vec
mat <- matrix(vec, ncol = 4)
mat

def_mat <- function(i,j,k){matrix(k, nrow = i, ncol = j)}
def_mat(3,5,0)

diag(vec)
diag(3)

A <- rbind(c(2,0,2),c(1,2,3),c(0,1,3))
B <- rbind(c(3,2,1),c(1,0,0),c(1,1,1))
B

diag(A)
dim(A)
mean(A)
colSums(A)
apply(A, MARGIN = c(1,2), FUN = function(x){x^2})
t(A)
det(A)
qr(A)$rank
solve(A)
solve(A)%*%A
solve(A, c(1,2,3))

library(Biodem)

AB <- A %*% B
BA <- B %*% A
A2 <- A %*% A
B3 <- B %*% B %*% B
A2_2 <- mtx.exp(A, 2)
B3_2 <- mtx.exp(B, 3)
AB
BA
A2
A2_2
B3
B3_2

M = matrix(c(0,1,0,-7,3,-1,16,-3,4), nrow=3, byrow=TRUE)
eigen(M)
round(solve(M)%*%M, 2)

M <- rbind(c(2,6,-8), c(0,6,-3), c(0,2,1))
P <- eigen(M)$vectors
D <- diag(eigen(M)$values)
P_INV <- solve(P)
C <- P %*% D %*% P_INV
P
D
P_INV
C
M

# Cálculo del determinante para matrices. La segunda forma sirve para 
# el cálculo del determinante en matrices de números complejos.
E <- rbind(c(2-1i,6+2i,-8), c(0-2i,6+3i,0-3i), c(0+2i,2+2i,1-3i))
vap <- eigen(M)$values
det(M)
prod(vap)