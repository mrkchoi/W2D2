class Employee
  def initialize(name, title, salary, boss)
    @name=name
    @title=title
    @salary=salary
    @boss=boss 

    update_man_list if boss!=nil
  end
  def bonus(mult)
    @salary*mult
  end
  def update_man_list
    @boss.employees << self
  end
  def inspect
    puts  @name 
    puts  @title+"\n" 
    puts  @salary.to_s+"\n" 
    puts  @boss.to_s+"\n\n"
    puts  @employees.first.name

  end


end