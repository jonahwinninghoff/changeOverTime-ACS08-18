library(survey)
library(readr)

varNames <- tolower(c('ST','SERIALNO','AGEP','DDRS','DEAR','DEYE','DOUT','DPHY','DRATX','DREM','FDEARP','ESR','SCHL','RAC1P','HISP','SEX','PERNP','PINCP','SSIP','WKHP','WKW','ADJINC','PWGTP','INTP', 'OIP', 'PAP', 'RETP', 'SEMP',  'SSP', 'WAGP',paste0('pwgtp',1:80)))

makeDes <- function(YR){

    print(YR)

    yr <- if(is.integer(YR)){ if(YR<10) paste0('0',YR) else(paste0(YR)) } else YR
    firstTry <- read_csv(paste0('../../data/byYear/ss',yr,'pusa.csv'), n_max=5)
    colTypes <- paste(ifelse(tolower(names(firstTry))%in%varNames,'i','-'),collapse='')

    datA <- read_csv(paste0('../../data/byYear/ss',yr,'pusa.csv'),col_types=colTypes)
    names(datA) <- tolower(names(datA))
    stopifnot(all.equal(sort(names(datA)),sort(varNames)))

    datB <- read_csv(paste0('../../data/byYear/ss',yr,'pusb.csv'),col_types=colTypes)
    names(datB) <- tolower(names(datB))
    dat <- rbind(datA[,varNames],datB[,varNames])

    rm(datA,datB); gc()

    names(dat) <- toupper(names(dat))
    names(dat)[grep('PWGTP[0-9]+',names(dat))] <- tolower( names(dat)[grep('PWGTP[0-9]+',names(dat))])


    hdat <- rbind(read.csv(paste0('../../data/byYear/ss',yr,'husa.csv'))[,c('SERIALNO','TYPE')],
                  read.csv(paste0('../../data/byYear/ss',yr,'husb.csv'))[,c('SERIALNO','TYPE')])

    dat$type <- hdat$TYPE[match(dat$SERIALNO,dat$SERIALNO)]

    rm(hdat); gc()

    print('read')

    des <-  svrepdesign(variables=~DEAR+AGEP+ST+
                            #DEYE+DOUT+DPHY+DRATX+DREM+  ## right now they're not asking for this
                            type+SEX+RAC1P+HISP+SCHL+FDEARP,weight=~PWGTP,repweights='pwgtp[0-9]+',scale=4/80,rscales=rep(1,80),mse=TRUE,type='JK1',data=dat)
    des$mse <- TRUE

    rm(dat); gc()
    des
}

saveDes <- function(des){
    des <- subset(des,AGEP>=25)
    des <- subset(des,AGEP<65)

    des <- subset(des,type!=2)

    des <- subset(des,ST!=72)

    des <- update(des,attain = cut(SCHL,breaks=c(0,15,17,19,20,21,Inf),
                                   labels=c('No HS','HS','Some College','Associates','Bachelors','>Bachelors'),
                                   ordered=TRUE))
    des$variables$SCHL <- NULL

    des <- update(des,raceEth=ifelse(HISP>1,"Hispanic",
                              ifelse(RAC1P==2,"African American",
                              ifelse(RAC1P==6| RAC1P==7,"Asian/PacIsl",
                              ifelse(RAC1P%in%c(3,4,5),'American Indian',
                              ifelse(RAC1P==1,"White","Other"))))))


    des <- update(des,ageRange = cut(AGEP,breaks=seq(24,65,10),#include.lowest=TRUE,
                                     labels=c('25-34','35-44','45-54','55-64'),ordered=TRUE))


    save(des,file=paste0('../../data/byYear/design',yr,'.RData'))
}

for(year in c('08','09','10','11','12','13','14','15','16','17')){
    start <- proc.time()
    des <- makeDes(year)
    print('design made')
    print(proc.time()-start)

    saveDes(des)
    rm(des); gc()

    print((proc.time()-start)/60)
}





#setwd('deafCenter/changeOverTime25.34')
