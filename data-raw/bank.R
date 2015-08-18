library(dplyr)

if (!dir.exists('data')) {
    dir.create('data')
}

url <- paste0('https://archive.ics.uci.edu/ml/machine-learning-databases/',
              '00222/bank-additional.zip')
zipName <- file.path('data', 'bank-additional.zip')
dirName <- file.path('data', 'bank-additional')
inFile <- file.path('bank-additional', 'bank-additional-full.csv')
outFile <- file.path('data', 'bank.rda')

if (file.exists(outFile)) stop('bank.rda already exists')

if (!dir.exists(dirName)) {
    download.file(url = url, destfile = zipName, method = 'curl')
    unzip(zipName)
    system(paste('rm -rf', zipName, '__MACOSX'))
}

bank <- read.table(inFile,
                   sep = ';',
                   header = TRUE,
                   colClasses = c('numeric', 'factor', 'factor',
                                  'factor', 'factor', 'factor',
                                  'factor', 'factor', 'factor',
                                  'factor', 'numeric', 'numeric',
                                  'numeric', 'numeric', 'factor',
                                  'numeric', 'numeric', 'numeric',
                                  'numeric', 'numeric', 'factor')) %>%
    tbl_df()

save(bank, file = outFile)
system('rm -rf bank-additional')
rm(list = ls())
