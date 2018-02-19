def new_romans num
  tuhat = (num / 1000)
  sada = (num % 1000 / 100)
  tens = (num % 100 / 10)
  ones = (num % 10)

  roman = 'M' * tuhat

  # sajad
  if sada == 9
    roman = roman + 'CM'
  elsif sada == 4
    roman = roman + 'CD'
  else
    roman = roman + 'D' * (num % 1000 / 500)
    roman = roman + 'C' * (num % 500 / 100)
  end

  # tens
  if tens == 9
    roman = roman + 'XC'
  elsif tens == 4
    roman = roman + 'XL'
  else
    roman = roman + 'L' * (num % 100 / 50 )
    roman = roman + 'X' * (num % 50 / 10 )
  end

  # ones
  if ones == 9
    roman = roman + 'IX'
  elsif ones == 4
    roman = roman + 'IV'
  else
    roman = roman + 'V' * (num % 10 / 5 )
    roman = roman + 'I' * (num % 5 )
  end

  roman
end

puts new_romans(1994)
puts new_romans(2000)
puts new_romans(100)
puts new_romans(1990)