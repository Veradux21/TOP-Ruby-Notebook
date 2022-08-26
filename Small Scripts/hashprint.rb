hash = {
  thing1: "oompa",
  thing2: "loompa",
  thing3: "doopity",
  thing4: "do",
  thing5: "I've got",
  thing6: "another",
  thing7: "puzzle",
  thing8: "for you"
}

hash.each {|key, value| puts key}
hash.each {|key, value| puts value}
hash.each {|key, value| puts "#{key}: #{value}"}