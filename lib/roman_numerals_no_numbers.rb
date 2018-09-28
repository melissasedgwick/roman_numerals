class RomanNumerals

  def calculate(val1, val2)
    total = convert_to_i(val1) + convert_to_i(val2)
    convert_from_i(total)
  end

  def convert_to_i(val)
    val = val.gsub("IV", "IIII")
    val = val.gsub("IX", "IIIIIIIII")
  end

  def convert_from_i(val)
    val = val.gsub("IIIII", "V")
    val = val.gsub("IIII", "IV")
    val = val.gsub("VV", "X")
    val = val.gsub("VIV", "IX")
  end

end
