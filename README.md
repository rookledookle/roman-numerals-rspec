## RSpec TDD Exercise: Roman Numerals
Using [Rails Girls TDD Exercise](http://guides.railsgirls.com/test-driven-development/) as a guide.

####A Quick Look
```ruby
class Roman
  ROMAN_HASH = {
    1 => "I",
    4 => "IV",
    5 => "V",
    9 => "IX",
    10 => "X",
    40 => "XL",
    50 => "L",
    90 => "XC",
    100 => "C",
    400 => "CD",
    500 => "D",
    900 => "CM",
    1000 => "M"
  }

  def roman_converter(n)
    digit_array = n.to_s.reverse.split('')
    digit_hash = Hash[digit_array.each_with_index.map{|value, index| [index, value]}] 
    number_array = []
    digit_hash.each do |key, value|
      number_array << (value << ("0"*key))
    end
    number_array = number_array.reverse.map(&:to_i)
    answer = ''
    number_array.each do |number|
      digits = number.to_s.length
      if ROMAN_HASH.has_key?(number)
        answer << ROMAN_HASH[number]
      elsif number == 0
        answer << ''
      else
        remainder = number % ("5" + ("0"*(digits - 1))).to_i
        remainder_length = remainder.to_s.length
        first_digit = number.to_s.split('').first.to_i
        if first_digit < 5
          answer << ROMAN_HASH[("1" + ("0"*(digits-1))).to_i] * first_digit
        elsif (first_digit > 5) && (ROMAN_HASH[remainder] != nil)
          answer << (ROMAN_HASH[("5" + ("0"*(digits-1))).to_i] + (ROMAN_HASH[remainder]))
        else
          answer << (ROMAN_HASH[("5" + ("0"*(digits-1))).to_i] + (ROMAN_HASH[("1"+("0"*(remainder_length-1))).to_i]*(remainder.to_s.split('').first.to_i)))
        end
      end
    end
    return answer
  end
end

```