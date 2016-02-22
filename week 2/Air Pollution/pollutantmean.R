pollutandmean <- function( pollutant, directory, id = 1:332) {
        
        if (pollutant == "s") 
                indicator <-  "sulfate"
        else    
                indicator  <- "nitrate"
        
        fileName <- paste(sprintf("%03d", id), ".csv", sep = "")
        filePath <- paste(directory, fileName, sep="/")
        rawdataset <- read.csv(filePath)  
        # cleanDataset <-  na.omit(rawdataset[, indicator])
        # mean(cleanDataset, na.rm  = TRUE)

}
