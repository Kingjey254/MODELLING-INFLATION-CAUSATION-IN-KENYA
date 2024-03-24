X=read.csv(file.choose())
X
YEARS=(X$YEARS)
YEARS
GDP_GROWTH_RATES=(X$GDP.GROWTH..RATES)
GDP_GROWTH_RATES
EXCHANGE_RATES=(X$EXCHANGE.RATES)
EXCHANGE_RATES
CPI_RATES=(X$CPI.RATES)
CPI_RATES
LENDING_RATES=(X$ LENDING.RATES)
LENDING_RATES
INFLATION_RATES=(X$INFLATION.RATES)
INFLATION_RATES
#Descriptive statistics
summary(X)
library(moments)
skewness(X)
kurtosis(X)
cor(X, method = c("pearson", "kendall", "spearman"))
sd(GDP_GROWTH_RATES)
sd(EXCHANGE_RATES)
sd(CPI_RATES)
sd(LENDING_RATES)
sd(INFLATION_RATES)
#Data visualizations
#line graph
plot(YEARS,GDP_GROWTH_RATES,type="l")
plot(YEARS,EXCHANGE_RATES,type="l")
plot(YEARS,CPI_RATES,type="l")
plot(YEARS,LENDING_RATES,type="l")
plot(YEARS,INFLATION_RATES,type="l")
#Histogram
hist(GDP_GROWTH_RATES)
hist(EXCHANGE_RATES)
hist(CPI_RATES)
hist(LENDING_RATES)
hist(INFLATION_RATES)
#Model fitting
model=lm(INFLATION_RATES~GDP_GROWTH_RATES+EXCHANGE_RATES+CPI_RATES+LENDING_RATES, data=X)
model
summary(model)
plot(model)

