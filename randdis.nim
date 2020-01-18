import random, math

## Caution!! This is very naive implementation. Any check for the valid range of the paramaters within the function were omitted. nim.random.rand() is used without randomize() initialization. The function may crush in the middle of operation and/or may give you strange values.
 
proc randnorm* (mean: float, sd: float): float =
  var
    r1: float = 0.0
    r2: float = 0.0
  r1=rand(1.0)
  r2=rand(1.0)
  result = mean+sd*sqrt(-2.0*ln(r1))*cos(2*PI*r2)
  
proc randcauchy* (location: float, scale: float): float =
  var
    r1: float = 0.0
  r1=rand(1.0)
  result = location+scale*tan(PI*(r1-0.5))

proc randlogis* (location: float, scale: float): float =
  var
    r1: float = 0.0
  r1=rand(1.0)
  result = location+scale*(ln(r1)-ln(1-r1))

proc randweibull* (shape: float, scale: float): float =
  var
    r1: float = 0.0
  r1=rand(1.0)
  result = scale*pow((-1*ln(1-r1)), 1.0/shape)

proc randgumbel* (location: float, scale: float): float =
  var
    r1: float = 0.0
  r1=rand(1.0)
  result = location-scale*ln(-ln(r1))

proc randfrechet* (shape: float, location: float, scale: float): float =
  var
    r1: float = 0.0
  r1=rand(1.0)
  result = location+scale*pow((-1.0*ln(r1)),-1.0/shape)


proc randexp* (mean: float): float =
  var
    r1: float = 0.0
  r1=rand(1.0)
  result = -1*mean*ln(1-r1)

proc randpareto* (shape: float, scale: float): float =
  var
    r1: float = 0.0
  r1=rand(1.0)
  result = scale/pow((1-r1),1/shape)

proc randgamma* (shape: float, scale: float): float =
  ## Marsaglia and Tsang’s Method
  var
    r1: float =0.0
    r2: float =0.0
    d: float =0.0
    c: float =0.0
    v: float =1.0
    y: float =0.0
    w: float =0.0
    
  if shape > 1.0:
    d = shape - 1.0/3.0
    c = 1.0/sqrt(9.0*d)
    while true:
      while true:
        r1=randnorm(0.0,1.0)
        if r1*c > -1.0:
          break
      v=1.0+c*r1
      v=v*v*v
      r2=rand(1.0)
      if (r2 < 1-0.0331*(r1*r1)*(r1*r1)):
        return d*v/scale
      if log10(r2) < 0.5*r1*r1+d*(1.0 - v + log10(v)):
        return d*v/scale
  else:
    y=randgamma(shape+1,scale)
    w=rand(1.0)
    return y*pow(w,1.0/shape)

proc randkaisquare* (freedom: int): float =
  var kk =0.0
  for i in 0..freedom:
    var rr = randnorm(0.0,1.0)
    kk = kk + rr*rr
  result = kk

proc randstudentt* (freedom: int): float =
  var r1 = randnorm(0.0, 1.0)
  var r2 = randkaisquare(freedom)
  result = r1/sqrt(r2/toFloat(freedom))

proc randF* (freedom1: int, freedom2: int): float =
  var r1 = randkaisquare(freedom1)
  var r2 = randkaisquare(freedom2)  
  result = (r1/toFloat(freedom1))/(r2/toFloat(freedom2)) 

proc randbinomi* (trial: int, prob: float): int =
  var bb = 0
  for i in 0..trial-1:
    var r1 = rand(1.0)
    if r1 < prob:
      bb =bb+1
  result = bb

proc randpois* (lambda:float): int =
  var pp = 0
  var jj = exp(-1*lambda)
  var kk = 1.0-rand(1.0)
  while  kk > jj:
    kk = kk*(1.0-rand(1.0))
    pp = pp+1
  result = pp


