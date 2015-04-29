# def roman(n)

#   if n == 1
#     return "I"
#   elsif n == 5
#     return "V"
#   elsif n == 10
#     return "X"
#   elsif n == 50
#     return "L"
#   elsif n == 100
#     return "C"
#   end
# end

class Roman
  ROMAN_RULES = {
    1 => "I",
    5 => "V",
    10 => "X",
    50 => "L",
    100 => "C"
  }
  def roman_rules_basic(n)
    if ROMAN_RULES.has_key?(n)
      return ROMAN_RULES[n]
    else
      return "IV"
    end
  end
end

