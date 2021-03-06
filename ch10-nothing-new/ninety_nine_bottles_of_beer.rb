class BeerSong

  def initialize(bottles)
    @bottles = bottles
    if @bottles < 0
      @bottles = 0
    end
  end

  def english_number(number)
    if number < 0 # No negative numbers.
      return 'Please enter a number that isn\'t negative.'
    end
    if number == 0
      return 'zero'
    end # No more special cases! No more returns!
    num_string = '' # This is the string we will return.
    ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    # "left" is how much of the number we still have left to write out.
    # "write" is the part we are writing out right now. write and left...get it? :)
    left = number
    write = left/(10**48) # How many quindecillions left?
    left = left - write*(10**48) # Subtract off those quindecillions.
    if write > 0 # Now here's the recursion:
      quindecillions = english_number(write)
      num_string = num_string + quindecillions + ' quindecillion'
      if left > 0 # So we don't write 'two trillionfive billion'...
        num_string = num_string + ' '
      end
    end
    write = left/(10**45) # How many quattuordecillions left?
    left = left - write*(10**45) # Subtract off those quattuordecillions.
    if write > 0 # Now here's the recursion:
      quattuordecillions = english_number(write)
      num_string = num_string + quattuordecillions + ' quattuordecillion'
      if left > 0 # So we don't write 'two trillionfive billion'...
        num_string = num_string + ' '
      end
    end
    write = left/(10**42) # How many tredecillions left?
    left = left - write*(10**42) # Subtract off those tredecillions.
    if write > 0 # Now here's the recursion:
      tredecillions = english_number(write)
      num_string = num_string + tredecillions + ' tredecillion'
      if left > 0 # So we don't write 'two trillionfive billion'...
        num_string = num_string + ' '
      end
    end
    write = left/(10**39) # How many duodecillions left?
    left = left - write*(10**39) # Subtract off those duodecillions.
    if write > 0 # Now here's the recursion:
      duodecillions = english_number(write)
      num_string = num_string + duodecillions + ' duodecillion'
      if left > 0 # So we don't write 'two trillionfive billion'...
        num_string = num_string + ' '
      end
    end
    write = left/(10**36) # How many undecillions left?
    left = left - write*(10**36) # Subtract off those undecillions.
    if write > 0 # Now here's the recursion:
      undecillions = english_number(write)
      num_string = num_string + undecillions + ' undecillion'
      if left > 0 # So we don't write 'two trillionfive billion'...
        num_string = num_string + ' '
      end
    end
    write = left/(10**33) # How many decillions left?
    left = left - write*(10**33) # Subtract off those decillions.
    if write > 0 # Now here's the recursion:
      decillions = english_number(write)
      num_string = num_string + decillions + ' decillion'
      if left > 0 # So we don't write 'two trillionfive billion'...
        num_string = num_string + ' '
      end
    end
    write = left/(10**30) # How many nonillions left?
    left = left - write*(10**30) # Subtract off those nonillions.
    if write > 0 # Now here's the recursion:
      nonillions = english_number(write)
      num_string = num_string + nonillions + ' nonillion'
      if left > 0 # So we don't write 'two trillionfive billion'...
        num_string = num_string + ' '
      end
    end
    write = left/(10**27) # How many octillions left?
    left = left - write*(10**27) # Subtract off those octillions.
    if write > 0 # Now here's the recursion:
      octillions = english_number(write)
      num_string = num_string + octillions + ' octillion'
      if left > 0 # So we don't write 'two trillionfive billion'...
        num_string = num_string + ' '
      end
    end
    write = left/(10**24) # How many septillions left?
    left = left - write*(10**24) # Subtract off those septillions.
    if write > 0 # Now here's the recursion:
      septillions = english_number(write)
      num_string = num_string + septillions + ' septillion'
      if left > 0 # So we don't write 'two trillionfive billion'...
        num_string = num_string + ' '
      end
    end
    write = left/(10**21) # How many sextillions left?
    left = left - write*(10**21) # Subtract off those sextillions.
    if write > 0 # Now here's the recursion:
      sextillions = english_number(write)
      num_string = num_string + sextillions + ' sextillion'
      if left > 0 # So we don't write 'two trillionfive billion'...
        num_string = num_string + ' '
      end
    end
    write = left/(10**18) # How many quintillions left?
    left = left - write*(10**18) # Subtract off those quintillions.
    if write > 0 # Now here's the recursion:
      quintillions = english_number(write)
      num_string = num_string + quintillions + ' quintillion'
      if left > 0 # So we don't write 'two trillionfive billion'...
        num_string = num_string + ' '
      end
    end
    write = left/(10**15) # How many quadrillions left?
    left = left - write*(10**15) # Subtract off those quadrillions.
    if write > 0 # Now here's the recursion:
      quadrillions = english_number(write)
      num_string = num_string + quadrillions + ' quadrillion'
      if left > 0 # So we don't write 'two trillionfive billion'...
        num_string = num_string + ' '
      end
    end
    write = left/(10**12) # How many trillions left?
    left = left - write*(10**12) # Subtract off those trillions.
    if write > 0 # Now here's the recursion:
      trillions = english_number(write)
      num_string = num_string + trillions + ' trillion'
      if left > 0 # So we don't write 'two trillionfive billion'...
        num_string = num_string + ' '
      end
    end
    write = left/1000000000 # How many billions left?
    left = left - write*1000000000 # Subtract off those billions.
    if write > 0 # Now here's the recursion:
      billions = english_number(write)
      num_string = num_string + billions + ' billion'
      if left > 0 # So we don't write 'two billionfive million'...
        num_string = num_string + ' '
      end
    end
    write = left/1000000 # How many millions left?
    left = left - write*1000000 # Subtract off those millions.
    if write > 0 # Now here's the recursion:
      millions = english_number(write)
      num_string = num_string + millions + ' million'
      if left > 0 # So we don't write 'two millionfive thousand'...
        num_string = num_string + ' '
      end
    end
    write = left/1000 # How many thousands left?
    left = left - write*1000 # Subtract off those thousands.
    if write > 0 # Now here's the recursion:
      thousands = english_number(write)
      num_string = num_string + thousands + ' thousand'
      if left > 0 # So we don't write 'two thousandfive hundred'...
        num_string = num_string + ' '
      end
    end
    write = left/100 # How many hundreds left?
    left = left - write*100 # Subtract off those hundreds.
    if write > 0 # Now here's the recursion:
      hundreds = english_number(write)
      num_string = num_string + hundreds + ' hundred'
      if left > 0 # So we don't write 'two hundredfifty-one'...
        num_string = num_string + ' '
      end
    end
    write = left/10 # How many tens left?
    left = left - write*10 # Subtract off those tens.
    if write > 0
      if ((write == 1) and (left > 0))
        # Since we can't write "tenty-two" instead of "twelve", we have to make a special exception for these.
        num_string = num_string + teenagers[left-1]
        # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.Since we took care of the digit in the
        # ones place already, we have nothing left to write.
        left = 0
      else
        num_string = num_string + tens_place[write-1]
        # The "-1" is because tens_place[3] is 'forty', not 'thirty'.
      end
      if left > 0
        # So we don't write 'sixtyfour'...
        num_string = num_string + '-'
      end
    end
    write = left # How many ones left to write out?
    left = 0 # Subtract off those ones.
    if write > 0
      num_string = num_string + ones_place[write-1]
      # The "-1" is because ones_place[3] is 'four', not 'three'.
    end
    # Now we just return "num_string"...
    num_string
  end

  def plural_check(bottles)
    bottles != 1 ? plural = "bottles" : plural = "bottle"
  end

  def lyrics(bottles)
    puts "#{english_number(bottles)} #{plural_check(bottles)} of beer on the wall,".capitalize
    puts "#{english_number(bottles)} #{plural_check(bottles)} of beer,".capitalize
    puts "Take one down, pass it around,"
    puts "#{english_number(bottles - 1)} #{plural_check(bottles - 1)} of beer on the wall.".capitalize
  end

  def print_song
    @bottles.downto 1 do |x|
      lyrics x
      @bottles -= 1
    end
  end
end
