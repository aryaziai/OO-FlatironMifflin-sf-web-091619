class Manager

    attr_reader :name
    attr_accessor :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end


    def employees
        Employee.all.select do |employeelife|
            employeelife.manager_name == self
        end
    end


    def hire_employee(name, salary)
        new_hire = Employee.new(name, salary, self) 
    end

    def self.all_departments
        departments = @@all.map do |manager|
            manager.department
        end
        departments.uniq
    end

    def self.average_age
        sum = 0
        @@all.each do |manager|
            sum += manager.age
        end
        sum / @@all.count.to_f
    end

    def self.all
        @@all
    end


 


end
