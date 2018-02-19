def old_romans num
  roman = ''
  roman = roman + 'M'*(num / 1000) #tuhanded
  roman = roman + 'D' * (num % 1000 / 500) #500
  roman = roman + 'C' * (num % 500 / 100) #100
  roman = roman + 'L' * (num % 100 / 50 ) #50
  roman = roman + 'X' * (num % 50 / 10  ) #10
  roman = roman + 'V' * (num % 10 / 5 ) #5
  roman = roman + 'I' * (num % 5 ) #1
end


puts old_romans(1999)