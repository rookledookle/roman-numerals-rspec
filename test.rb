require "rspec"
require_relative "roman"

# describe "roman" do
#   it "converts the number 1 to the string I" do
#     expect(roman(1)).to eq("I")
#   end
#   it "converts the number 5 to the string V" do
#     expect(roman(5)).to eq("V")
#   end
#   it "converts the number 10 to the string X" do
#     expect(roman(10)).to eq("X")
#   end
#   it "converts the number 50 to the string L" do
#     expect(roman(50)).to eq("L")
#   end
#   it "converts the number 100 to the string C" do
#     expect(roman(100)).to eq("C")
#   end
# end

describe "roman_rules" do

  # [1,5,10,50,100].each do |n|
  #   it "gets correct key value pair from ROMAN_RULES hash" do
  #     roman = Roman.new
  #     expect(roman.roman_rules(n)).to eq(ROMAN_RULES[n])
  #     expect(roman.roman_rules(n)).not_to be_nil
  #   end
  # end

  it "takes 4 and changes it into IV" do
    roman = Roman.new
    expect(roman.roman_rules_basic(4)).to eq("IV")
  end
end