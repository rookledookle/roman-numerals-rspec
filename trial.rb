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

remainder = 800 % ("5" + ("0"*(3 - 1))).to_i #300
remainder_length = remainder.to_s.length #3

ROMAN_HASH[("1"+("0"*(remainder_length-1))).to_i] * remainder