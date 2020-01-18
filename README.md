This is a collection of random number generators for various provability distributions written in nim.
At present it has,
for continuous distribution
normal distribution: randnorm(mean: float, sd: float)
exponential distribution: randexp(mean: float)
kaisquare distribution: randkaisquare(freedom: int)
student's-t distributuin: randstudentt(freedom: int)
logistic distribution: randlogis(location: float, scale: float)
F distribution: randF(freedom1: int, freedom2: int)
gamma distribution: randgamma(shape: float, scale: float)
pareto distribution: randpareto(shape: float, scale: float)
cauchy distribution: randcauchy(location: float, scale: float)
weibull distribution: randweibull(shape: float, scale: float)
gumbel distribution: randgumbel(location: float, scale: float)
frechet distridution: randfrechet(shape: float, location: float, scale: float)

for discrete distribution 
binorminal distribution: randbinomi* (trial: int, prob: float)
poisson distribution randpois(lambda:float)

This is very naive implementation. There will be lots of rooms for improvements. Any suggestion is welcome. 
The procs do not have any checking code for the valid range of the paramaters. For your safety, it is good to have checking code in your program when using these procs. 
The nim.random.rand() is used without randomize() initialization. Procs will give you the same series numbers if you do not initialize by randomize() (with defferent seed value for each time). 
The procs will generate only one number. If you need a set of numbers, you have to loop them by yourself.
 
