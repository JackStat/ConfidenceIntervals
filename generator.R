generator = function(n, pop.mean , pop.sd, conf.lvl) {
  plot(NULL, xlim = c(pop.mean-pop.sd,pop.mean+pop.sd),ylim=c(0,100),yaxt = 'n',xlab= (conf.lvl), , ylab=(n), main="Confidence Intervals of 100 Samples")
  abline(v=pop.mean, col='black')
  
  for (i in 1:100){
    x<-rnorm(n, mean = pop.mean, sd = pop.sd)
    test<-t.test(x,conf.level=conf.lvl)
    interval<-test$conf.int
    if(pop.mean>interval[1] & pop.mean<interval[2])
    {lines(c(interval[1],interval[2]),c(i,i), lwd=2,col='black')}
    else
    {lines(c(interval[1],interval[2]),c(i,i), lwd=2,col='red' )} 
  }
  
}