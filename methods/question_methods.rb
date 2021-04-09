def contact(answer)
  return true if answer.downcase == "y"
end

def support(answer)
  return false if answer.downcase == "y"
end

def check_contact(answer)
if !contact
  contact(answer)
end
end

def check_support(answer)
if support
  support(answer)
end
end