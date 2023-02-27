> set.seed(200)
> df1=data.frame(val=rnorm(n=200,mean=5,sd=2),label=rep("Y",200))
> df2=data.frame(val=rnorm(n=200,mean=-5,sd=2),label=rep("N",200))
> df=rbind(df1,df2)
> df$label=as.factor(df$label)
> dt=rpart(label~val,method = "class",data = df)
> printcp(dt)

Classification tree:
  rpart(formula = label ~ val, data = df, method = "class")

Variables actually used in tree construction:
  [1] val

Root node error: 200/400 = 0.5

n= 400 

CP nsplit rel error xerror      xstd
1 0.99      0      1.00  1.140 0.0495076
2 0.01      1      0.01  0.015 0.0086277
> rpart.plot(dt)