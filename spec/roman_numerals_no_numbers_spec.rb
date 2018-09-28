require 'roman_numerals_no_numbers'

describe RomanNumerals do

  before :each do
    @calculator = RomanNumerals.new
  end

  it "should return II when passed I and I" do
    expect(@calculator.calculate("I", "I")).to eq("II")
  end

  it "should return IV when passed II and II" do
    expect(@calculator.calculate("II", "II")).to eq("IV")
  end

  it "should return V when passed II and III" do
    expect(@calculator.calculate("II", "III")).to eq("V")
  end

  it "should return V when passed I and IV" do
    expect(@calculator.calculate("I", "IV")).to eq("V")
  end

  it "should return VI when passed III and III" do
    expect(@calculator.calculate("III", "III")).to eq("VI")
  end

  it "should return X when passed V and V" do
    expect(@calculator.calculate("V", "V")).to eq("X")
  end

  it "should return XX when passed X and X" do
    expect(@calculator.calculate("X", "X")).to eq("XX")
  end

  it "should return XIX when passed X and IX" do
    expect(@calculator.calculate("X", "IX")).to eq("XIX")
  end

end
