source('makeData.r')
source('estByYear.r')

load('output/estsOverTimeTot.RData')

year <- '18'
start <- proc.time()
des <- makeDes(year)
print('design made')
print(proc.time()-start)

des <- prepDes(des)
save(des,file=paste0('../../data/byYear/design',year,'.RData'))

overTimeTot[[year]] <- yearInfo(year,des)

rm(des); gc()

print((proc.time()-start)/60)

save(overTimeTot,file='output/estsOverTimeTot.RData')

overTime <- sapply(overTimeTot,function(x) x$outRaw,simplify=FALSE,USE.NAMES=TRUE)
overTimeAge <- sapply(overTimeTot,function(x) x$outAdj,simplify=FALSE,USE.NAMES=TRUE)
sampleSizes <- sapply(overTimeTot,function(x) x$outSS,simplify=FALSE,USE.NAMES=TRUE)

save(overTime,overTimeAge,sampleSizes,file='output/estByYear.RData')
