
#---------- addData Function -----------
# Last modified : 13/09/17
# Used to add a row to an exsiting table in the database.
# Assumes that dataframe passed (addtable) has same number of columns as exisiting table. 

addData <- function(dataTable, addTable){
  
  query <- paste("select * from", dataTable, sep = " ")
  openTable <- dbGetQuery(condb, query)
  names(addTable) <- names(openTable)
  
  dbWriteTable(condb, dataTable, addTable, append = TRUE)
  
}

#---------- delDataRow Function -----------
# Last modified : 13/09/17
# Used to del a row in an exsiting table in the database.
# Assumes that first row is always an ID row, and uses this to find the row to delete. Later plan to create a function to appened an ID row to dataframe is not present.  


delDataRow <- function(dataTable, rowId){
  
  query <- paste("select * from", dataTable, sep = " ")
  idColName <- names(dbGetQuery(condb, query)[1])
  
  dbQuery <- paste("delete from ", dataTable,  " where ", idColName, " = '", rowId,"'", sep = "")
  dbExecute(condb, dbQuery)
  
  
}

#---------- modDataRow Function -----------
# Last modified : 13/09/17
# Used to modify a row in an exsiting table in the database.
# Assumes that dataframe passed (modtable) has same number of columns as exisiting table, and that first coloumn is an ID coloumn. 


modDataRow <- function(dataTable,modTable, rowId){
  
  numCols = ncol(modTable)
  query <- paste("select * from", dataTable, sep = " ")
  openTable <- dbGetQuery(condb, query)
  names(modTable) <- names(openTable)
  idColName <- names(dbGetQuery(condb, query)[1])
  
  for(i in 2:numCols){
    colName <- colnames(modTable[i])
    
    if(!is.na(modTable[i])){
      Query <- paste("update ",dataTable, " set ", colName, "= '", modTable[[i]],"'", " where ", idColName, " = '", rowId,"'", sep = "")
      dbExecute(condb, Query)
    }
  }
  
  
}

#---------- viewData Function -----------
# Last modified : 13/09/17
# Used to view a table, or row in an exsiting table, in the database.

viewData <- function(dataTable, rowID = NULL ){
  
  query <- paste("select * from", dataTable, sep = " ")
  idColName <- names(dbGetQuery(condb, query)[1])
  
  if(!is.null(rowID)){
      View(dbGetQuery(condb, paste("select * from ", dataTable, " where ", idColName, " = ", rowID, sep = "" )))
  }
  else{
    View(dbGetQuery(condb, paste("select * from ", dataTable, sep = "" )))
  }
}
  