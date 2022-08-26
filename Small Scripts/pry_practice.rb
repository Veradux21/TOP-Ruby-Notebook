
def something_different(name)
  name.reverse
end

def yell_greeting(string)
  name = string
  name = something_different(name)
  name = name.upcase
  greeting = "WASSAP, #{name}!"
  puts greeting
end

yell_greeting("Tomato")