puts "What is your name?"
name = gets.chomp
if name.include? " "
    name = name.split(" ")
    first_name = name[0]
    last_name = name[1]
    puts "Hello " + first_name
    10.times do
        puts first_name + " " + last_name
    end
else 
    puts "Hello " + name
    10.times do
        puts name
    end
end
