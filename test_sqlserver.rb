require File.dirname(__FILE__) + '/sqlserver_helper'

db = SqlServer.new('192.168.1.221', 'mis', 'tc_q210_file')
db.open('MIS')
db.query("SELECT * from qaf002;")



puts  db.fields.inspect  

data = db.data  
for item in data
  puts item.inspect.encode("utf-8")
end   

db.close 
  