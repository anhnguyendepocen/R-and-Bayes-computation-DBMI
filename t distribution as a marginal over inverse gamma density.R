### the t distribution as a marginal over inverse gamma density

```{r}
N = 1000
Shape = 2
variances = 1/rgamma(N, shape = Shape, 1)
Y = rnorm(N, sd = sqrt(variances))
head(data.frame(variances=variances, Y=Y))
```
- Each row is a draw from the joint distribution. 
- Each column is a sample from the marginal distribution of the respective variable.

Bigger variances give greater excursions:
```{r}
plot(variances, Y, log="x")
```

The composition method does a good job of generating variates from the __t__ distribution.
```{r}
plot(density(Y), xlim = c(-4,4))
lines(seq(-4,4,length.out = 1000) -> x, 
      dt(x=x*sqrt(Shape), df = 2*Shape)
      *sqrt(Shape), col="red")
```
