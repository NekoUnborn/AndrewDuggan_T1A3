def check_contact(answer, contact)
  return true if contact || (answer == "y")

  false
end

def check_support(answer, support)
  return false if !support || (answer == "y")

  true
end
