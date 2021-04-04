def questions
  contact = false
  supported = true

  def contact
    if answer == "y"
      contact = true
    end
  end

  def support(answer)
    if answer == "y"
    supported = false
    end
  end

  hash = { :h => nil }
  p hash
  if hash[:h].!nil
  hash[:h].call("y")
  end
  p supported

end