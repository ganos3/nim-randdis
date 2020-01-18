This is a collection of random number generators for various provability distributions written in nim.

At present, it has:  
for continuous distribution:  
1. normal distribution: randnorm(mean: float, sd: float)
2. exponential distribution: randexp(mean: float)
3. kaisquare distribution: randkaisquare(freedom: int)
4. student's-t distributuin: randstudentt(freedom: int)
5. logistic distribution: randlogis(location: float, scale: float)
6. F distribution: randF(freedom1: int, freedom2: int)
7. gamma distribution: randgamma(shape: float, scale: float)
8. pareto distribution: randpareto(shape: float, scale: float)
9. cauchy distribution: randcauchy(location: float, scale: float)
10. weibull distribution: randweibull(shape: float, scale: float)
11. gumbel distribution: randgumbel(location: float, scale: float)
12. frechet distridution: randfrechet(shape: float, location: float, scale: float)

for discrete distribution:  
13. binorminal distribution: randbinomi* (trial: int, prob: float)
14. poisson distribution randpois(lambda:float)

This is very naive implementation. There will be lots of rooms for improvements. Any suggestion is welcome.  
The procs do not have any checking code for the valid range of the paramaters. For your safety, it is good to have checking code in your program when using these procs.  
The nim.random.rand() is used without randomize() initialization. Procs will give you the same series numbers if you do not initialize by randomize() (with defferent seed value for each time).  
The procs will generate only one number. If you need a set of numbers, you have to loop them by yourself.  
 
