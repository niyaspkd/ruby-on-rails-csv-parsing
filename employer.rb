require 'csv'

CSV.foreach("employer.csv", { encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all}) do |row|

 employee=Employee.new
 employee.name = row[0]
 employee.badge_id = row[1]
 ds=Designation.where(name: row[2]).first
 
 employee.designation_id=ds.id
 
 employee.save!
  
 
  
end
