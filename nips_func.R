#立方体の各面に一様分布
#立方体全体でみて一様分布にはなっていない
#l=一辺の長さ、fp=一つの面上にある点の個数
cube_xunif<-function(l=1, fp=100){
  
  faces<-lapply(1:6, function(i){
    
    x<-runif(fp, 0, l)
    y<-runif(fp, 0, l)
    
    return(cbind(x, y))
    
  })
  
  bottom<-cbind(faces[[1]], rep(0, fp))
  right<-cbind(rep(l, fp), faces[[2]][, 2], l-faces[[2]][, 1])
  front<-cbind(faces[[3]][,1], rep(0, fp), faces[[3]][,2])
  behind<-cbind(faces[[4]][,1], rep(l, fp), l-faces[[4]][,2])
  left<-cbind(rep(0, fp), faces[[5]][,2], faces[[5]][,1])
  top<-cbind(faces[[6]], rep(l, fp))
  cube<-rbind(bottom, right, front, behind, left, top)
  
  return(cube)
  
}
