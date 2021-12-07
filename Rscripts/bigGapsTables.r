subs <- c('Tot',#'25.29',
          'ByAgeCat',
          'Sex','Race','RaceM','RaceF')#,'RaceSex')
library(knitr)
library(tidyverse)
library(rmarkdown)
library(estimatr)

ya <- FALSE
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

load('output/ageDist18.RData')


gaps <- list()
for(s in subs)
    for(l in c('hs','cc','bach')){
        nn <- paste0(l,s)
        gaps[[nn]] <- gapAdjYr(nn,overTimeAge,ageDist18)
        #gaps[[nn]]$SS <- getSampleSizes(nn,overTime,NULL)
}

pvals <- do.call('c',lapply(gaps,function(x) x$pvals))
pvalsAdj <- c(p.adjust(pvals[1:3],'holm'),p.adjust(pvals[-c(1:3)],method='fdr'))

stars <-
  ifelse(pvalsAdj<0.001,'***',
    ifelse(pvalsAdj<0.01,'**',
      ifelse(pvalsAdj<0.05,'*',
          ifelse(pvalsAdj<0.1,'.',''))))


for(nn in names(gaps)){
  gaps[[nn]]$stars <-
    if(ncol(gaps[[nn]]$ests)==1) stars[nn] else stars[paste0(nn,'.',colnames(gaps[[nn]]$ests))]
}

totGap <- list(
  gdat=bind_rows(
    cbind(gapDatAdj('hsTot',overTimeAge)$gdat,level='High School'),
    cbind(gapDatAdj('ccTot',overTimeAge)$gdat,level="Associate's Degree"),
    cbind(gapDatAdj('bachTot',overTimeAge)$gdat,level="Bachelor's Degree")
  ),
  subCols=c('DEAR','level')
)

tabs <- list()

for(l in c('hs','cc','bach')){
    tab <- NULL
    for(ss in subs){
        newtab <- t(makeGapTab(gaps[[paste0(l,ss)]]))
        if(ss=='Tot'){
            newtab <- as.matrix(newtab)
            rownames(newtab) <- 'Overall'
        }
        if(ss=='ByAgeCat'){
            newtab <- newtab['25-34',]
            newtab <- rbind(newtab)
            rownames(newtab) <- 'Age 25-34'
        }
        if(ss=='Sex'){
            rownames(newtab)[rownames(newtab)=='Male'] <- 'Men'
            rownames(newtab)[rownames(newtab)=='Female'] <- 'Women'
        }
        if(ss=='RaceM') rownames(newtab) <- paste(rownames(newtab),'men')
        if(ss=='RaceF') rownames(newtab) <- paste(rownames(newtab),'women')
        tab <- rbind(tab,newtab)
    }
    tab <- gsub('$\\pm$','+/-',tab,fixed=TRUE)
    tab <- as.data.frame(tab)
    tabs[[l]] <- tab
}

openxlsx::write.xlsx(tabs,'gaps.xlsx',row.names=TRUE,col.names=TRUE)
