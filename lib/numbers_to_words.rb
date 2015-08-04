class Fixnum
  define_method(:numbers_to_words) do


      lowest_digits = {0 => false, 1 => "one", 2 => "two", 3 => "three", 4 => "four",
        5 => "five",
        6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11=> "eleven",
        12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen",
        17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}

      digits_20_99 = {2 => "twenty", 3 => "thirty", 4 => "fourty", 5 => "fifty",
          6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}



    if self < 20
      lowest_digits.fetch(self)

    elsif self < 100
      split_self = self.to_s.chars.map(&:to_i)
      tens = digits_20_99.fetch(split_self[0])
      if split_self[1] != 0
        ones = lowest_digits.fetch(split_self[1])
        word_number = tens + " " + ones
      else
        word_number = tens
      end

    else
      split_self = self.to_s.chars.map(&:to_i)
      hundreds = lowest_digits.fetch(split_self[0])
      word_number = hundreds + " hundred"
      if split_self[1] != 0 && split_self[1] != 1
        tens = digits_20_99.fetch(split_self[1])
        word_number = word_number + " " + tens
        if split_self[2] != 0
          ones = lowest_digits.fetch(split_self[2])
          word_number = word_number + " " + ones
        end
      elsif split_self[1] == 1
        teens = split_self[1].to_s + split_self[2].to_s
        teens = teens.to_i
        teens_word_number = lowest_digits.fetch(teens)
        word_number = word_number + " " + teens_word_number
      elsif split_self[1] == 0 && split_self[2] != 0
        ones = lowest_digits.fetch(split_self[2])
        word_number = word_number + " " + ones
      end
      word_number
    end
  end
end
