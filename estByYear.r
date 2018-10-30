library(kimisc)
library(survey)

#if(!exists('ya')) ya <- FALSE

abvs <- c(HS='hs',Associates='cc',Bachelors='bach')

est1 <- function(edLev,des,raw=FALSE){
    abv <- if(edLev%in%names(abvs)) abvs[edLev] else 'lev'
    subsets <- list('AGEP','ageRange','raceEth','SEX',c('SEX','raceEth'))
    if(raw) subsets <- c('DEAR','I(AGEP<30)',subsets)
    subsets <- lapply(subsets,function(sss) reformulate(if(raw) c('DEAR',sss) else c('DEAR','AGEP',sss)))

    out <- lapply(subsets, function(x)
        merge( svyby(~I(attain>=edLev),by=x,design=des,FUN=svymean,na.rm=TRUE),
              as.data.frame(xtabs(x,des$variables,drop=TRUE))))

    names(out) <- paste0(abv,c(if(raw) c('Tot','25.29','ByAge') else 'Tot',
                               'ByAgeCat','Race','Sex','RaceSex'))

    if(!raw) out[[paste0(abv,'25.29')]] <- subset(out[[paste0(abv,'Tot')]],AGEP<30)

    out <- lapply(out,function(x) x[,-c(grep('FALSE',colnames(x)),which(colnames(x)=='se1'))])

    out
}

sampSize <- function(des){
    out <- list()
    out$bachByAge <- out$hsByAge <- xtabs(~AGEP+DEAR,des$variables,drop=TRUE)
    out$bach25.29 <- out$hs25.29 <- xtabs(~DEAR+I(AGEP<30),des$variables,drop=TRUE)
    out$bachTot <- out$hsTot <- xtabs(~DEAR,des$variables,drop=TRUE)
    out$bachByAgeCat <- out$hsByAgeCat <- xtabs( ~ageRange+DEAR,des$variables,drop=TRUE)

    out$bachRace <- out$hsRace <- xtabs(~raceEth+DEAR,des$variables,drop=TRUE)

    out$bachSex <- out$hsSex <- xtabs(~SEX+DEAR,des$variables,drop=TRUE)

    out$bachRaceSex <- out$hsRaceSex <- xtabs(~SEX+raceEth+DEAR,des$variables,drop=TRUE)

    out
}

yearInfo <- function(year){
    print(year)
    load(paste0('../../data/byYear/design',year,'.RData'))
    des <- subset(des,AGEP>24 & AGEP<65) ## changed this to change age range
#    des <- update(des,raceEth=ifelse(raceEth%in%c('American Indian','Asian/PacIsl'),'Other',raceEth))

    levs <- c('HS','Associates','Bachelors')

    outRaw <- do.call('c',lapply(levs,est1,des=des,raw=TRUE))
    outAdj <-  do.call('c',lapply(levs,est1,des=des,raw=FALSE))
    outSS <- sampSize(des)

    rm(des);gc()

    list(outRaw=outRaw,outAdj=outAdj,outSS=outSS)
}


library(parallel)
cl <- makeCluster(4)
clusterEvalQ(cl,library(survey))
clusterExport(cl,c('abvs','est1','sampSize'))

years <- c('08','09','10','11','12','13','14','15','16','17')
overTimeTot <- parLapply(cl,years,yearInfo)
names(overTimeTot) <- years
save(overTimeTot,file='output/estsOverTimeTot.RData')



## overTimeTot <- lapply(overTimeTot, function(x){
##     sscc <- x$outSS[grep('hs',names(x$outSS))]
##     names(sscc) <- gsub('hs','cc',names(sscc))
##     x$outSS <- c(x$outSS,sscc)
##     with(x,list(outRaw=lapply(names(outRaw),function(nn) merge(outRaw[[nn]],as.data.frame(outSS[[nn]]))),
##                 outAdj=


overTime <- sapply(overTimeTot,function(x) x$outRaw,simplify=FALSE,USE.NAMES=TRUE)
overTimeAge <- sapply(overTimeTot,function(x) x$outAdj,simplify=FALSE,USE.NAMES=TRUE)
sampleSizes <- sapply(overTimeTot,function(x) x$outSS,simplify=FALSE,USE.NAMES=TRUE)

save(overTime,overTimeAge,sampleSizes,file='output/estByYear.RData')

## nyear <- length(years)
## nAnal <- length(overTime[[1]])

## for(i in 1:nyear)
##     for(j in 1:nAnal){
##         names(overTime[[i]][[j]])[grep('bachelors|hs',ignore.case=TRUE,names(overTime[[i]][[j]]))] <- 'xx'
##         frows <- grep('FALSE',rownames(overTime[[i]][[j]]))
##         if(length(frows)>0) overTime[[i]][[j]] <- overTime[[i]][[j]][-frows,]
##     }


## save(overTime,file='output/estsbyYear25.34.RData')
