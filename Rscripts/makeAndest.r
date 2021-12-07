# Add different directory due to folder structure change
directory<- c(paste(getwd(),'Rscripts/makeData.r',sep='/'),
              paste(getwd(),'Rscripts/estByYear.r',sep='/'),
              paste(getwd(),'Assets/',sep='/'))

for(i in c(1,2)){source(directory[i])} # Read two scripts

overTimeTot <- list() # Instantiate the list

for(year in c('08','09','10','11','12','13','14','15','16','17')){
    start <- proc.time() # timer started
    des <- makeDes(year) # Use makeDes() function
    print('design made')
    print(proc.time()-start) # Timer ended

    des <- prepDes(des)      # Use prepDes() function
    # Create and save file
    save(des,file=paste0(directory[3],'byYear/design',year,'.RData'))

    overTimeTot[[year]] <- yearInfo(year,des)

    rm(des); gc()

    print((proc.time()-start)/60)
}
save(overTimeTot,file='output/estsOverTimeTot.RData')

overTime <- sapply(overTimeTot,function(x) x$outRaw,simplify=FALSE,USE.NAMES=TRUE)
overTimeAge <- sapply(overTimeTot,function(x) x$outAdj,simplify=FALSE,USE.NAMES=TRUE)
sampleSizes <- sapply(overTimeTot,function(x) x$outSS,simplify=FALSE,USE.NAMES=TRUE)

save(overTime,overTimeAge,sampleSizes,file='output/estByYear.RData')
