def lab_check(str)
  test_str = str.downcase
  if /test_str/ =~ "lab"
    p str
  else
    p str + " is not a lab!"
  end
end

lab_check("laboratory")
lab_check("experiment")
lab_check("Pans Labyrinth")
lab_check("elaborate")
lab_check("polar bear")