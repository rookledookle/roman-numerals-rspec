class Roman
  ROMAN_HASH = {
    1 => "I",
    2 => "II",
    3 => "III",
    4 => "IV",
    5 => "V",
    6 => "VI",
    7 => "VII",
    8 => "VIII",
    9 => "IX",
    10 => "X",
    50 => "L",
    100 => "C"
  }
  def roman_classification(n)
    if ROMAN_HASH.has_key?(n)
      roman_rules_basic(n)
    else
      roman_rules_other_double_digit(n)
    end
  end

  def roman_rules_basic(n)
    return ROMAN_HASH[n]
  end

  def roman_rules_other_double_digit(n)
    round_down_tens = (n/10)*10
    second_digit = n % 10

    case
      when round_down_tens < 50
        first_digit = round_down_tens.to_s.chomp('0')
        answer = ROMAN_HASH[first_digit]
        if ROMAN_HASH.has_key?(second_digit)
          return answer << ROMAN_HASH[second_digit].to_s
        else 
          return nil
        end
      when round_down_tens > 50
      else
        return nil
    end
  end
end

