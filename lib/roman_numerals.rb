class RomanNumerals

ROMAN_NUMERALS = {M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90, L: 50,  XL: 40,
                   X: 10, IX: 9, IV: 4, V: 5, I: 1}

def find_number(roman)
  numbers = []
    while roman.length > 0 do
      ROMAN_NUMERALS.each do |numeral, num|
        if roman.start_with?(numeral.to_s)
          numbers << num
          roman.slice!(0..numeral.to_s.length - 1)
        end
      end
    end
  return numbers.inject(:+)
end

ROMAN_NUMERALS_2 = { 1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC",
                   50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I" }

def find_numeral(number)
  roman_numeral = ""
    ROMAN_NUMERALS_2.each do |num, numeral|
      (number / num).times do
        roman_numeral << numeral
        number -= num
      end
    end
  return roman_numeral
end

def calculate(num1, num2)
  x = find_number(num1)
  y = find_number(num2)
  return find_numeral(x + y)
end

end

def user_input
  puts "Please enter your two Roman numerals, separated by a space."
  input = gets.chomp
  numbers = input.split(" ").each {|x| x.to_i}
  puts numbers[0] + " + " + numbers[1] + " = #{RomanNumerals.new.calculate(numbers[0], numbers[1])}"
end

user_input

# = RomanNumerals.new
#puts n.find_number("LXL")
