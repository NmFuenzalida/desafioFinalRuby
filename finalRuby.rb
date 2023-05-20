class Person
    def initialize(first, last, age, type)
    @first_name = first
    @last_name = last
    @age = age
    @type = type
    end
    def birthday
    @age += 1
    end
    def talk
    if @type == "Student"
    puts "Aquí es la clase de programación con Ruby?"
    elsif @type == "Teacher"
    puts "Bienvenidos a la clase de programación con Ruby!"
    elsif @type == "Parent"
    puts "Aquí es la reunión de apoderados?"
    end
    end
    def introduce
        if @type == "Student"
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
        elsif @type == "Teacher"
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
        elsif @type == "Parent"
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name}
        #{@last_name}."
        end
        end
        end


        #1)se identifica las subclases 
# Estudiante (Student): Tiene los métodos talk e introduce específicos para estudiantes.
# Profesor (Teacher): Tiene los métodos talk e introduce específicos para profesores.
# Apoderado (Parent): Tiene los métodos talk e introduce específicos para apoderados.

# 2)con la utilizacion de herenciapara subclases
# class Teacher < Person
#     def talk
#       puts "¡Bienvenidos a la clase de programación con Ruby!"
#     end
    
#     def introduce
#       puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
#     end
#   end
  
#   class Parent < Person
#     def talk
#       puts "¿Aquí es la reunión de apoderados?"
#     end
        

# 3) El metodo introduce en cada subclase imprimirá el mensaje con el nombre y apellido usando interpolacion
# de variables de instancia (#first_name y last_name)
# def introduce

#     puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
#   end
# end

#4)generar instancias y mostrar mensajes en funcion al metodo invocado

student = Student.new("Nico", "Morales", 28, "Student")
student.introduce  # Hola profesor. Mi nombre es Juan Pérez.
student.talk  # ¿Aquí es la clase de programación con Ruby?

teacher = Teacher.new("Israel", "Palma", 37#, "Teacher")
teacher.introduce  # Hola alumnos. Mi nombre es María López.
teacher.talk  # ¡Bienvenidos a la clase de programación con Ruby!

parent = Parent.new("Pedro", "González", 40, "Parent")
parent.introduce  # Hola. Soy uno de los apoderados. Mi nombre es Pedro González.
parent.talk  # ¿Aquí es la reunión de apoderados?