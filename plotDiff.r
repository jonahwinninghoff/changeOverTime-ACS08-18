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



################# plot "total" gaps

for(l in c('hs','cc','bach')){
  for(ss in subs){
    gdat <- gapDat(paste0(l,ss),overTime)
    p <- plotGap(gdat,errbar=nrow(gdat$subsets)/2<4)+
    ggtitle(
      paste(
        switch(l,
          hs='High School',
          cc="Associate's Degree",
          bach="Bachelor's Degree"
        ),
        'Attainment Gaps Over Time'
      ),
      subtitle=if(ss=='Tot') NULL else
        switch(ss,
          ByAgeCat='By Age',
          Sex='By Sex',
          Race='By Race/Ethnicity',
          RaceM='By Race/Ethnicity (Males)',
          RaceF='By Race/Ethnicity (Females)'
        )
    )
    ggsave(paste0('figure/gapFigs/',l,ss,'Gap.png'),p)
  }
}


############### adjusted gaps
for(l in c('hs','cc','bach')){
  for(ss in subs){
    gdat <- gapDatAdj(paste0(l,ss),overTimeAge)
    p <- plotGap(gdat,errbar=nrow(gdat$subsets)/2<4)+
    ggtitle(
      paste(
        switch(l,
          hs='High School',
          cc="Associate's Degree",
          bach="Bachelor's Degree"
        ),
        'Attainment Gaps Over Time (Age-Adjusted)'
      ),
      subtitle=if(ss=='Tot') NULL else
        switch(ss,
          ByAgeCat='By Age',
          Sex='By Sex',
          Race='By Race/Ethnicity',
          RaceM='By Race/Ethnicity (Males)',
          RaceF='By Race/Ethnicity (Females)'
        )
    )
    ggsave(paste0('figure/gapFigs/',l,ss,'GapAgeAdjusted.png'),p)
  }
}



################## total gaps all together
totGap <- list(
  gdat=bind_rows(
    cbind(gapDat('hsTot',overTime)$gdat,level='High School'),
    cbind(gapDat('ccTot',overTime)$gdat,level="Associate's Degree"),
    cbind(gapDat('bachTot',overTime)$gdat,level="Bachelor's Degree")
  ),
  subCols=c('DEAR','level')
)
p <- plotGap(totGap)+ggtitle('Attainment Gaps Over Time')
ggsave('figure/gapFigs/totGaps.png',p)

totGap <- list(
  gdat=bind_rows(
    cbind(gapDatAdj('hsTot',overTimeAge)$gdat,level='High School'),
    cbind(gapDatAdj('ccTot',overTimeAge)$gdat,level="Associate's Degree"),
    cbind(gapDatAdj('bachTot',overTimeAge)$gdat,level="Bachelor's Degree")
  ),
  subCols=c('DEAR','level')
)
p <- plotGap(totGap)+ggtitle('Attainment Gaps Over Time')
ggsave('figure/gapFigs/totGapsAdj.png',p)





############### trends
subs <- c('Tot','25.29',
          'ByAgeCat',
          'Sex','Race','RaceM','RaceF')#,'RaceSex')

gaps <- list()
for(s in subs)
    for(l in c('hs','cc','bach')){
        nn <- paste0(l,s)
        gaps[[nn]] <- gapAdjYr(nn,overTimeAge)
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

