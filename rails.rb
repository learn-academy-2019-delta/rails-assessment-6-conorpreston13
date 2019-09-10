# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of "Hello, World" for the given language. The default should be English. Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'

def hello_world(lang)
    if lang == 'es'
        p 'Hola Mundo'
    elsif lang == 'de'
        p 'Hallo Welt'  
    elsif lang == 'fr'
        p 'Bonjour le monde'
    elsif lang == 'ru'
        p 'Привет, мир'
    elsif lang == 'ja'
        p 'こんにちは世界'
    else
        p 'Hello World'
    end
end
hello_world('es')
hello_world('de')
hello_world('ru')
hello_world('ja')
hello_world('fr')
hello_world('')

# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'

def assign_grade(grade)
    if grade >= 90
        p 'A'
    elsif grade >= 80
        p 'B'
    elsif grade >= 70
        p 'C'
    elsif grade >= 60
        p 'D'
    else
        p 'F'
    end
end
assign_grade(70)
assign_grade(20)
assign_grade(90)


# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.

def assign_grade1(grade1)
    if grade1 >= 0 && grade1 <= 100
        if grade1 >= 90
            p 'A'
        elsif grade1 >= 80
            p 'B'
        elsif grade1 >= 70
            p 'C'
        elsif grade1 >= 60
            p 'D'
        else
            p 'F'
        end
    else
        p 'Not a valid number'
    end
end
assign_grade1(102)
assign_grade1(55)
assign_grade1(-54)

# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'

def pluralizer(num, thing)
    if num >= 2
        p "#{num}, #{thing}s."
    else
        p "1 #{thing}."
    end
end
pluralizer(5, 'dog')
pluralizer(1, 'cat')
pluralizer(5678, 'snake')

# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.

def pluralizer1(num1, thing1)
    if thing1.downcase == 'sheep'
        p "#{num1}, sheep."
    elsif thing1.downcase == 'moose'
        p "#{num1}, moose." 
    elsif thing1.downcase == 'child'
        if num1 >=2
            p "#{num1} children"
        else
         p "1 child."
        end
    elsif num1 >= 2
        p "#{num1}, #{thing1}s."
    else
        p "1 #{thing1}"
    end
end
pluralizer1(2, 'child')
pluralizer1(1, 'child')
pluralizer1(6, 'sheep')