def questions
  contact = false
  supported = true

  questions = csv.parse(file.open("../saved_data/questions.csv"))
  hash = { :h => nil }
  p hash
  if hash[:h].!nil
  hash[:h].call("y")
  end
  p supported

end