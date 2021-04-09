def contact(answer)
  return true if answer.downcase == "y"
end

def support(answer)
  return false if answer.downcase == "y"
end

def check_contact
  contact ||= contact(answer)
end

def check_support
  support = support(answer) if support
end
