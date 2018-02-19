
def english_numbers num 
  # no negative
  # empty is zero
  if num < 0
    return 'Number can\'t be negative' 
  elsif num == 0
    return 'Zero'      
  end

  num_string = ''

  ones = ['one', 'two', 'three', 'four', 'five', 
          'six', 'seven', 'eight', 'nine']
  tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 
          'sixty', 'seventy', 'eighty', 'ninety']
  teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 
          'sixteen', 'seventeen', 'eighteen', 'nineteen']
  zillions = [['hundred', 2],
              ['thousand', 3],
              ['million', 6]]

  left = num

  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    p 'this is zil NAME: ' + zil_name.to_s + '.'
    zil_base = 10 ** zil_pair[1]
    p 'this is zil base ' + zil_base.to_s + '.'

    write = left/zil_base # how many zillions lenft?
    p 'this is WRITE  ' + write.to_s + '.'
    left = left - write * zil_base
    p 'this is LEFT how many zillions left ' + write.to_s + '.'

    if write > 0 
      prefix = english_numbers write
      p 'PREFIX on: ' + prefix.to_s + '.'
      num_string = num_string + prefix + ' ' + zil_name

      if left > 0
        num_string = num_string + ' '
      end
    end
  end

  write = left/10 # tens
  left = left - write*10

  if write > 0 
    if ((write == 1) && (left > 0)) # teenagers
      num_string = num_string + teens[left-1]
      left = 0
    else # twenty, thirty, forty...
      num_string = num_string + tens[write-1]
    end

    if left > 0 # 'twenty-two'
      num_string = num_string + '-' 
    end
  end


  write = left # ones
  left = 0

    if write > 0
      num_string = num_string + ones[write-1]
    end

  num_string
end

p english_numbers(3216)
#p english_numbers(222)