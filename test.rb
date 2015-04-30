require "rspec"
require_relative "roman"

describe Roman do
  before :each do
    @roman = Roman.new
  end

  it "takes 1 and changes it into I" do
    expect(@roman.roman_classification(1)).to eq("I")
  end
  it "takes 5 and changes it into V" do
    expect(@roman.roman_classification(5)).to eq("V")
  end
  it "takes 10 and changes it into X" do
    expect(@roman.roman_classification(10)).to eq("X")
  end
  it "takes 50 and changes it into L" do
    expect(@roman.roman_classification(50)).to eq("L")
  end
  it "takes 100 and changes it into C" do
    expect(@roman.roman_classification(100)).to eq("C")
  end

  it "takes 2 and changes it into II" do
    expect(@roman.roman_classification(2)).to eq("II")
  end

  it "takes 3 and changes it into III" do
    expect(@roman.roman_classification(3)).to eq("III")
  end

  it "takes 4 and changes it into IV" do
    expect(@roman.roman_classification(4)).to eq("IV")
  end

  it "takes 6 and changes it into VI" do
    expect(@roman.roman_classification(6)).to eq("VI")
  end
  
  it "takes 7 and changes it into VII" do
    expect(@roman.roman_classification(7)).to eq("VII")
  end
  
  it "takes 8 and changes it into VIII" do
    expect(@roman.roman_classification(8)).to eq("VIII")
  end

  it "takes 9 and changes it into IX" do
    expect(@roman.roman_classification(9)).to eq("IX")
  end

  it "takes 20 and changes it into XX" do
    expect(@roman.roman_classification(20)).to eq("XX")
  end
  it "takes 21 and changes it into XXI" do
    expect(@roman.roman_classification(21)).to eq("XXI")
  end
  it "takes 30 and changes it into XXX" do
    expect(@roman.roman_classification(30)).to eq("XXX")
  end
  it "takes 31 and changes it into XXXI" do
    expect(@roman.roman_classification(31)).to eq("XXXI")
  end
  it "takes 32 and changes it into XXXII" do
    expect(@roman.roman_classification(32)).to eq("XXXII")
  end
  it "takes 33 and changes it into XXXIII" do
    expect(@roman.roman_classification(33)).to eq("XXXIII")
  end
  it "takes 34 and changes it into XXXIV" do
    expect(@roman.roman_classification(34)).to eq("XXXIV")
  end
  it "takes 35 and changes it into XXXV" do
    expect(@roman.roman_classification(35)).to eq("XXXV")
  end
  it "takes 36 and changes it into XXXVI" do
    expect(@roman.roman_classification(36)).to eq("XXXVI")
  end
  it "takes 37 and changes it into XXXV" do
    expect(@roman.roman_classification(37)).to eq("XXXVII")
  end
  it "takes 38 and changes it into XXXVIII" do
    expect(@roman.roman_classification(38)).to eq("XXXVIII")
  end
  it "takes 39 and changes it into XXXIX" do
    expect(@roman.roman_classification(39)).to eq("XXXIX")
  end
  it "takes 40 and changes it into XL" do
    expect(@roman.roman_classification(40)).to eq("XL")
  end
  it "takes 41 and changes it into XLI" do
    expect(@roman.roman_classification(41)).to eq("XLI")
  end
end