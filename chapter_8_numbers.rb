def stringorizer number
  if (number < 0)
    return "Please enter a non-negative integer"
  end
  if (number == 0)
    return "zero"
  end

  numString = ''

  ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']


  # The following block can be rewritten as a method
  left = number


  write = left/10000000
  left = left - write*10000000

  if (write > 0)
    billion = stringorizer write
    numString = numString + billion + ' billion'

    if (left > 0)
      numString = numString + ', '
    end
  end


  write = left/1000000
  left = left - write*1000000

  if (write > 0)
    million = stringorizer write
    numString = numString + million + ' million'

    if (left > 0)
      numString = numString + ', '
    end
  end

  write = left/1000
  left = left - write*1000

  if (write > 0)
    thousand = stringorizer write
    numString = numString + thousand + ' thousand'

    if (left > 0)
      numString = numString + ' '
    end
  end

  write = left/100
  left = left - write*100

  if (write > 0)
    hundred = stringorizer write
    numString = numString + hundred + ' hundred and'

    if (left > 0)
      numString = numString + ' '
    end
  end









  write = left/10
  left = left - write*10

  if (write > 0)
    if (write == 1) and (left > 0)
      numString = numString + teens[left-1]
      left = 0
    elsif (write > 0)
      numString = numString + tens[write-1]
    end

    if (left > 0)
      numString = numString + '-'
    end
  end

  write = left
  left = 0

  if (write > 0)
    numString = numString + ones[write-1]
  end
  numString
end


puts stringorizer(0)
puts stringorizer(1)
puts stringorizer(10)
puts stringorizer(30)
puts stringorizer(11)
puts stringorizer(45)
puts stringorizer(145)
puts stringorizer(1000000)
puts stringorizer(1450000)
puts stringorizer(11450221)
