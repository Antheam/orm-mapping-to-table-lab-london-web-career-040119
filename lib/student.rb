class Student
  attr_accessor :name,:grade
  attr_reader :id
def initialize(name, grade, id=nil)
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
end

def self.create_table
    sql =  <<-SQL 
      CREATE TABLE IF NOT EXISTS student (
        id INTEGER PRIMARY KEY, 
        name TEXT, 
        grade INTEGER,
        id INTEGER
        )
        SQL
    DB[:conn].execute(sql) 
  end
  
