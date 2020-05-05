#立方体の表面上に一様分布するデータを作る
set.seed(101)
x1<-runif(100)
y1<-runif(100)

set.seed(102)
faces<-lapply(1:6, function(i){
  
  x<-runif(100)
  y<-runif(100)
  
  return(cbind(x, y))
  
})

bottom<-faces[[1]]
right<-faces[[2]]
front<-faces[[3]]
behind<-faces[[4]]
left<-faces[[5]]
top<-faces[[6]]

bottom2<-cbind(bottom, rep(0, 100))
right2<-cbind(rep(1, 100), right[, 2], 1-right[, 1])
front2<-cbind(front[,1], rep(0, 100), front[,2])
behind2<-cbind(behind[,1], rep(1, 100), 1-behind[,2])
left2<-cbind(rep(0, 100), left[,2], left[,1])
top2<-cbind(top, rep(1, 100))
cube<-rbind(bottom2, right2, front2, behind2, left2, top2)

cube2<-cube_xunif(l = 1, fp=50)
cube2_inted<-interpo3d:::voronoi_interpo(cube2, 15)

cube3<-cube_xunif(l = 2, fp = 36)
cube3_inted<-interpo3d:::voronoi_interpo(cube3, 10)

cube3_pd<-ripsDiag(cube3, maxdimension = 2, maxscale = 5)


