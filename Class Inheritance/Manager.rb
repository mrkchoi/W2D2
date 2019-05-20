require_relative "Employee.rb"

class Manager < Employee
  attr_reader :employees
  def initialize(name, title, salary, boss)
  #super(name, title, salary, boss) 
    super
    @employees=[]
  end

  def add_employee(emp)
    @employees << emp 
  end 
  
end