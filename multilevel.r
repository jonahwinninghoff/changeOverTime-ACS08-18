## multilevel modeling approach to subgroup effects?
library(lme4)


load('estByYear2529.RData')

overTimeAge <- lapply(names(overTimeAge),function(yr) lapply(overTimeAge[[yr]],function(x)
    cbind(x,year=as.numeric(yr))))

bach <- do.call('rbind',
                lapply(overTimeAge,function(ests) ests$bachRaceSex))

### just to try things out... made up numbers
### really weights should be sums of survey weights for specific subjects... or something
bach$w <- bach$Freq*100
bach$y <- round(bach[['I(attain >= edLev)TRUE']]*bach$w)/bach$w

bach$sex <- factor(c('male','female')[bach$SEX])
bach$deaf <- factor(c('deaf','hearing')[bach$DEAR],levels=c('hearing','deaf'))

mod <- glmer(y~as.factor(AGEP)+year*(deaf+sex)+
                (year|raceEth)+
                     (year|deaf:sex)+(year|deaf:raceEth)+(year|sex:raceEth)+
                        (year|deaf:sex:raceEth),data=bach,family=binomial,weights=w)
summary(mod)

bach$prop <- bach[['I(attain >= edLev)TRUE']]

mod <- lmer(prop~as.factor(AGEP)+year*(deaf+sex)+
                (year|raceEth)+
                     (year|deaf:sex)+(year|deaf:raceEth)+(year|sex:raceEth)+
                         (year|deaf:sex:raceEth),data=bach)

summary(mod)
### conclusion so far: need to think more about weights, doesn't seem to be much going on here

hs <- do.call('rbind',
                lapply(overTimeAge,function(ests) ests$hsRaceSex))


hs$sex <- factor(c('male','female')[hs$SEX])
hs$deaf <- factor(c('deaf','hearing')[hs$DEAR],levels=c('hearing','deaf'))

hs$prop <- hs[['I(attain >= edLev)TRUE']]

mod <- lmer(prop~as.factor(AGEP)+year*(deaf+sex)+
                (year|raceEth)+
                     (year|deaf:sex)+(year|deaf:raceEth)+(year|sex:raceEth)+
                         (year|deaf:sex:raceEth),data=hs)

summary(mod)

cc <- do.call('rbind',
                lapply(overTimeAge,function(ests) ests$ccRaceSex))


cc$sex <- factor(c('male','female')[cc$SEX])
cc$deaf <- factor(c('deaf','hearing')[cc$DEAR],levels=c('hearing','deaf'))

cc$prop <- cc[['I(attain >= edLev)TRUE']]

mod <- lmer(prop~as.factor(AGEP)+year*(deaf+sex)+
                (year|raceEth)+
                     (year|deaf:sex)+(year|deaf:raceEth)+(year|sex:raceEth)+
                         (year|deaf:sex:raceEth),data=cc)

summary(mod)

### all together now
cc$lev <- 'cc'
hs$lev <- 'hs'
bach$lev <- 'bach'

dat <- rbind(cc,hs,bach)

mod <- lmer(prop~as.factor(AGEP)+year*(deaf+sex)+
                (year|raceEth)+
                     (year|deaf:sex)+(year|deaf:raceEth)+(year|sex:raceEth)+
                         (year|deaf:sex:raceEth),data=cc)

summary(mod)

#
