library(tidyverse)


source('trends.r')

load('output/estByYear.RData')

for(i in 1:length(overTime)){
    for(j in 1:length(overTime[[i]])){
        overTime[[i]][[j]]$year <- i
    }
    for(j in 1:length(overTimeAge[[i]])){
        overTimeAge[[i]][[j]]$year <- i
    }
    for(lev in c('hs','cc','bach'))
        for(sex in 1:2){
            overTime[[i]][[paste0(lev,'Race',c('M','F')[sex])]] <-
                subset(overTime[[i]][[paste0(lev,'RaceSex')]],SEX==sex,select=-SEX)
            overTimeAge[[i]][[paste0(lev,'Race',c('M','F')[sex])]] <-
                subset(overTimeAge[[i]][[paste0(lev,'RaceSex')]],SEX==sex,select=-SEX)
        }
    if(!ya){
        overTime[[i]]$hs25.29 <- overTime[[i]]$hs25.29[-grep('FALSE',rownames(overTime[[i]]$hs25.29)),]
        overTime[[i]]$bach25.29 <- overTime[[i]]$bach25.29[-grep('FALSE',rownames(overTime[[i]]$bach25.29)),]
        overTime[[i]]$hs25.29[['I(AGEP < 30)']] <- overTime[[i]]$bach25.29[['I(AGEP < 30)']] <- NULL
    }
}

for(i in 1:length(overTime))
  for(j in 1:length(overTime[[i]]))
    names(overTime[[i]][[j]]) <- gsub('se2','se',names(overTime[[i]][[j]]))

for(i in 1:length(overTimeAge))
  for(j in 1:length(overTimeAge[[i]]))
    names(overTimeAge[[i]][[j]]) <- gsub('se2','se',names(overTimeAge[[i]][[j]]))

################### 2018 age distribution

svmean <- function(x,w,na.rm=TRUE){
    w <- w/sum(w)
    sum(x*w,na.rm=na.rm)
}

datA <- read_csv('../../data/byYear/ss18pusa.csv',col_types=cols(AGEP='i',PWGTP='i',.default='_'))
datB <- read_csv('../../data/byYear/ss18pusb.csv',col_types=cols(AGEP='i',PWGTP='i',.default='_'))
dat18 <- bind_rows(datA,datB)%>%
  filter(AGEP<65,AGEP>24)%>%
  mutate(w=PWGTP/sum(PWGTP))
ageDist18 <- dat18%>%group_by(AGEP)%>%summarize(ww=sum(w))
save(ageDist18,file='ageDist18.RData')

################## HS total

dat <- combineDat('hsTot',overTimeAge)$tdat
dat <- full_join(dat,ageDist18)

dat%>%
  ggplot(aes(year,y,color=AGEP))+#,shape=factor(DEAR)))+
  geom_point()+
  facet_wrap(~DEAR)

### lm with weights vs lm_robust w/o weights vs lm_robust with weights

see <- function(mod) round(summary(mod)$coef[c('DEAR','year','DEAR:year'),],4)


mod1a <- lm(y~DEAR*year+as.factor(AGEP),dat)
mod1b <- update(mod1a,weights=1/se^2)
mod1c <- lm_robust(y~DEAR*year+as.factor(AGEP),dat)#,se_type='HC3')
mod1d <- update(mod1c,weights=1/se^2,se_type='HC3')

mod1e <- lm(y~DEAR*year, fixed_effects=AGEP,dat)

mod1f <- lm(y~(DEAR+as.factor(AGEP))*year,dat)

mod1g <- update(mod1a,weights=prop)
mod1h <- update(mod1f,weights=prop)
lapply(letters[1:4],function(l) round(summary(get(paste0('mod1',l)))$coef[c('DEAR','year','DEAR:year'),],4))

mod1i <- lm_robust(y~(DEAR+as.factor(AGEP))*year,dat,weights=prop)


mod1j <- lm_robust(y~(DEAR+splines::ns(AGEP,10))*year,dat,weights=prop)


mod1 <- lm(y~DEAR*year+as.factor(AGEP),dat,weights=1/se^2)

mod1 <- lm_robust(y~DEAR*year+as.factor(AGEP),dat,weights=1/se^2)


########################### AA total

dat <- combineDat('ccTot',overTimeAge)$tdat
dat <- full_join(dat,ageDist18)

dat%>%
  ggplot(aes(year,y,color=AGEP))+#,shape=factor(DEAR)))+
  geom_point()+
  facet_wrap(~DEAR)

### lm with weights vs lm_robust w/o weights vs lm_robust with weights

see <- function(mod) round(summary(mod)$coef[c('DEAR','year','DEAR:year'),],4)


see(mod1a <- lm(y~DEAR*year+as.factor(AGEP),dat))
see(mod1b <- update(mod1a,weights=1/se^2))
see(mod1c <- lm_robust(y~DEAR*year+as.factor(AGEP),dat))#,se_type='HC3')
see(mod1d <- update(mod1c,weights=1/se^2,se_type='HC3'))

mod1e <- lm(y~DEAR*year, fixed_effects=AGEP,dat)

mod1f <- lm(y~(DEAR+as.factor(AGEP))*year,dat)

see(mod1g <- update(mod1a,weights=ww))
mod1h <- update(mod1f,weights=ww)
lapply(letters[1:4],function(l) round(summary(get(paste0('mod1',l)))$coef[c('DEAR','year','DEAR:year'),],4))

see(mod1i <- lm_robust(y~(DEAR+as.factor(AGEP))*year,dat,weights=ww))


see(mod1j <- lm_robust(y~(DEAR+splines::ns(AGEP,10))*year,dat,weights=ww))

