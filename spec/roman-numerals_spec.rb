require 'helper'

describe RomanNumerals do
  describe ".to_roman" do
    {
      1    => 'I',
      4    => 'IV',
      5    => 'V',
      9    => 'IX',
      10   => 'X',
      40   => 'XL',
      50   => 'L',
      90   => 'XC',
      100  => 'C',
      400  => 'CD',
      500  => 'D',
      900  => 'CM',
      1000 => 'M'
    }.each do |decimal, roman_numeral|
      it "converts the decimal value #{decimal} to the roman numeral #{roman_numeral}" do
        RomanNumerals.to_roman(decimal).should == roman_numeral
      end
    end
    it "converts larger decimals" do
      RomanNumerals.to_roman(23234).should == 'MMMMMMMMMMMMMMMMMMMMMMMCCXXXIV'
      RomanNumerals.to_roman(42).should == 'XLII'
    end
  end
end
