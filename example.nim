import randdis, strutils, random

var seed: int
var mean: float
var std: float

echo " "
echo "Input a seed number for randomize:"
while true:
  try:
    seed = parseInt(readLine(stdin))
    break
  except:
    echo "Seed has to be some integure. Input again."
    continue

echo "Input mean:"
while true:
  try:
    mean = parseFloat(readLine(stdin))
    break
  except:
    echo "Mean has to be some number. Input again."
    continue

echo "Input standard deviation(std):"
while true:
  try:
    std = parseFloat(readLine(stdin))
    if std < 0:
      echo "Std has to be some positive number. Input again"
      continue
    break
  except:
    echo "Std has to be some positive number. Input again"
    continue

randomize(seed)

echo " "
echo "rand normal(",mean,", ",std,")"
for i in 0..10:
  echo randnorm(mean, std)

echo " "
echo "Hit Enter to continue."
discard readLine(stdin)

echo " "
echo "rand cauchy(0,1)"
for i in 0..10:
  echo randcauchy(0.0, 1.0)
echo " "
echo "rand logistic(0,1)"
for i in 0..10:
  echo randlogis(0.0, 1.0)
echo " "
echo "rand weibull(1,1)"
for i in 0..10:
  echo randweibull(1.0, 1.0)
echo " "
echo "rand gumbel(0,1)"
for i in 0..10:
  echo randgumbel(0.0, 1.0)
echo " "
echo "rand exponential(1)"
for i in 0..10:
  echo randexp(1.0)
echo " "
echo "rand pareto(1,1)"
for i in 0..10:
  echo randpareto(1.0,1.0)
echo " "
echo "rand gamma(1.3,1)"
for i in 0..10:
  echo randgamma(1.3,1.0)
echo " "
echo "rand gamma(0.3,1)"
for i in 0..10:
  echo randgamma(0.3,1.0)
echo " "
echo "rand frechet(3.0, 0.0, 1.0)"
for i in 0..10:
  echo randfrechet(3.0, 0.0, 1.0)
echo " "
echo "rand kaisquare(1)"
for i in 0..10:
  echo randkaisquare(1)
echo " "
echo "rand student-t(1)"
for i in 0..10:
  echo randstudentt(1)
echo " "
echo "rand F(3,1)"
for i in 0..10:
  echo randF(3,1)
echo " "
echo "rand(1)"
for i in 0..10:
  echo rand(1)
echo " "
echo "rand binominal(5, 0.3)"
for i in 0..10:
  echo randbinomi(5, 0.3)
echo " "
echo "rand poisson(1.0)"
for i in 0..10:
  echo randpois(1.0)

