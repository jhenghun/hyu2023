library(DBI)
library(RMySQL)

con = dbConnect(
  drv = MySQL(),
  user = 'root',
  password = '1234', # 위에서 설정한 root 비밀번호  host = '127.0.0.1',
  dbname = 'employee' # 사용하고자 하는 스키마
)
dbListTables(con)
dbGetQuery(con, 'select customerID, customerName, Country from customers;')