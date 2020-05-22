#重み付きアルファ複体の可能性を探る

a0<-c(0, -4)
a1<-c(2*sqrt(3), 2)
a2<-c(0, 4)
a3<-c(-2*sqrt(3), 2)
plot(rbind(a0, a1, a2, a3), xlim = c(-5, 5), ylim = c(-5, 5), pch=16)

theta <- seq(-pi, pi, length=100)
r<-4
polygon(r*cos(theta), r*sin(theta))

R<-2*sqrt(3)
R<-8*sqrt(3)/5
R<-8/2.5
R<-3.2228
R<-3.25
R<-2*sqrt(3)-1
R<-3.0551
R<-4

polygon(a0[1]+R*cos(theta), a0[2]+R*sin(theta))
polygon(a0[1]+1.5*R*cos(theta), a0[2]+1.5*R*sin(theta))
polygon(a1[1]+R*cos(theta), a1[2]+R*sin(theta))
polygon(a2[1]+R*cos(theta), a2[2]+R*sin(theta))
polygon(a3[1]+R*cos(theta), a3[2]+R*sin(theta))

polygon(a0[1]+2*cos(theta), a0[2]+2*sin(theta), col="pink")
points(a0[1], a0[2], pch=16)

polygon(1+R*cos(theta), (sqrt(3)-4)+R*sin(theta))
polygon(-1+R*cos(theta), (sqrt(3)-4)+R*sin(theta))
polygon(R*cos(theta), -2+R*sin(theta))
points(rbind(c(1, sqrt(3)-4),c(-1, sqrt(3)-4), c(0, -2)))
lines(c(0, 2*sqrt(3)), c(-4, 2))
lines(c(a1[1], a2[1], a3[1], a0[1]), c(a1[2], a2[2], a3[2], a0[2]))

#----------------------------------------
#点が満遍なく分布している場合

#点のプロット
for (i in 1:(360/30)) {
  
  points(4*cos((i-1)*pi/6), 4*sin((i-1)*pi/6), pch=16)
  
}

#円のプロット
x<-((2*sqrt(3)-4)^2 + 2^2)/2
x<-4*sin(pi/12)
x<-4
for (i in 1:(360/30)) {
  
  polygon(4*cos((i-1)*pi/6)+x*cos(theta), 4*sin((i-1)*pi/6)+x*sin(theta))
  
}

#---------------------------------
#密度が低いが均等に分布している場合
plot(rbind(a0, a1, a2, a3), xlim = c(-5, 5), ylim = c(-5, 5), type = "n")

#円のプロット
x<-4*sin(pi/4)
x<-4
for (i in 1:(360/90)) {
  
  polygon(4*cos((i-1)*pi/2)+x*cos(theta), 4*sin((i-1)*pi/2)+x*sin(theta))
  
}

#点のプロット
for (i in 1:(360/90)) {
  
  points(4*cos((i-1)*pi/2), 4*sin((i-1)*pi/2), pch=16)
  
}

