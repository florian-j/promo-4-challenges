def french_phone_number?(phone_number)
  # TODO: true or false?
  # commence par 0 et contient 10 digits
  # ou commence par +33 et contient 11 digits

  if phone_number =~ /^(0|\+33)[\s-]?[167][\s-]?(\d{2}[\s-]?){4}$/
    return true
  else
    return false
  end
end

p french_phone_number?("06 06 06 06 06")