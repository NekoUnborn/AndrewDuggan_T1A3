def if_contact(answer)
  return true if answer.downcase == "y"
end

def if_support(answer)
  return false if answer.downcase == "y"
end

def check_contact(answer, contact)
  if_contact(answer) unless contact
end

def check_support(answer, support)
  if_support(answer) if support
end
