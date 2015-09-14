require 'csv'

CSV.foreach("employer.csv", { encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all}) do |row|

 employee=Employee.new
 employee.name = row[0]
 employee.badge_id = row[1]
 if Designation.where(name: row[2]).count==0  
   ds=Designation.new
   ds.name=row[2]
   ds.save!
   employee.designation_id=ds.id
   employee.save!

 else
   ds=Designation.where(name: row[2]).first.id
   employee.designation_id=ds
   employee.save!
 end
  


   

   
 end
 

  
 
  

