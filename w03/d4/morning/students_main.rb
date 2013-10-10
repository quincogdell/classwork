require_relative("student")
require_relative("students_db")

#harry = Student.new("Harry", "male", false)
#hermoine = Student.new("Hermoine", "female", true)
quin = Student.new("Quin", "male", true)
quin.save
#StudentsDb.insert_student(hermoine) #insert the student into my database

#p StudentsDb.all # array of hashes of all the students i've inserted
#p StudentsDb.find_by_id(1)
#p StudentsDb.find_by_gender("female")
p StudentsDb.find_by_name("Quin")
