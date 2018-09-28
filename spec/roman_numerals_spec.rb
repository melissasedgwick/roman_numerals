require 'roman_numerals'

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

  it "should return VI when passed III and III" do
    expect(@calculator.calculate("III", "III")).to eq("VI")
  end

  it "should return X when passed V and V" do
    expect(@calculator.calculate("V", "V")).to eq("X")
  end

  it "should return C when passed L and L" do
    expect(@calculator.calculate("L", "L")).to eq("C")
  end

  it "should return MCM when passed MCD and D" do
    expect(@calculator.calculate("MCD", "D")).to eq("MCM")
  end

  it "should return MCMXCVII when passed MCM and XCVII" do
    expect(@calculator.calculate("MCM", "XCVII")).to eq("MCMXCVII")
  end

  it "should return DXLV when passed DXL and V" do
    expect(@calculator.calculate("DXL", "V")).to eq("DXLV")
  end

  it "should return XCIX when passed L and XLIX" do
    expect(@calculator.calculate("L", "XLIX")).to eq("XCIX")
  end

end
