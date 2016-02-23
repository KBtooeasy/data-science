

getIndicator <- function(pollutant) {
        
        if (pollutant == "s") 
                indicator <-  "sulfate"
        else    
                indicator  <- "nitrate"
}

geftFileNamesFromId <- function(directory, id) {
        fileNames <- paste(sprintf("%03d", id), ".csv", sep = "")
        filePool <- paste(directory, fileNames, sep="/")
}


readMultipleCsvFiles <- function(filePool) {
        lapply(filePool, function(x) { read.csv(x, header = TRUE)})
}

bindMultipleDataSet <- function(rawdataset) {
        Reduce(function(x, y) rbind(x, y), rawdataset)
}

getColMean <- function(oneDataset, columnName) {
        mean(oneDataset[ , columnName], na.rm = TRUE)
}

pollutandmean <- function( pollutant, directory, id = 1:332) {
        filePool = geftFileNamesFromId(directory, id)

        rawDataset= readMultipleCsvFiles(filePool)

        oneDataSet= bindMultipleDataSet(rawDataset)
        indicator = getIndicator(pollutant)
        getColMean(oneDataSet, indicator)
}
