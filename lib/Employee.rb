class Employee
    
    attr_reader :name
    attr_accessor :salary, :manager

    @@all = []

    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end

    def manager_name
        self.manager.name
    end



    def self.paid_over(salary_number)
            @@all.map do |employeee|
                employee.salary > salary_number
            end
    end

    def self.find_by_department(name_department)
        self.manager.name == name_department
    end


    def self.all
        @@all
    end

    
    

end