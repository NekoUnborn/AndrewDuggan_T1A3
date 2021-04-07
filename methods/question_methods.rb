def contact(answer, variable)
  if answer == variable
    contact = false
  end
end

def support(answer, variable)
  return !supported if answer == variable
end