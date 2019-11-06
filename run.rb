require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

david = Manager.new("David", "sales", 24) #david is the manager

poor_guy = Employee.new("Poor guy", 2, "David")

sara = Manager.new("Sara", "sales", 25)

# def employees
#     Employees.all.select do |employeelife|
#         employeelife.manager_name == self
#     end
# end

david.hire_employee("tom", 1000000)
sara.hire_employee("joe", 50000)
#p sara.employees



binding.pry
puts "done"
