class Fixnum
  define_method(:numbers_to_words) do


    lowest = {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
      11=> "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}

    tens = {2 => "twenty", 3 => "thirty", 4 => "fourty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}

    if self < 20
      word = lowest.fetch(self)
    elsif self < 100
    	word = tens.fetch(self/10)
    	if (self%10) != 0
    		word = word + " " + lowest.fetch(self%10)
    	end
    elsif self < 100
    	word = lowest.fetch(self/100) + " hundred"
    	if (self%100/10) != 0 && (self%100/10) != 1
    		word = word + " " + tens.fetch(self%100/10)
    		if self%100%10 != 0
    		word = word + " " + lowest.fetch(self%100%10)
    		end
    	elsif (self%100/10) == 0 && self%100%10 != 0
    		word = word + " " + lowest.fetch(self%100%10)
    	elsif (self%100/10) == 1
    		word = word + " " + lowest.fetch(self%100/10)
    	end
    end
    word
  end
end