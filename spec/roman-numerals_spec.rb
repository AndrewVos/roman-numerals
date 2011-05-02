require 'helper'

describe RomanNumerals do
  base_digits = {
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
  }

  describe ".to_roman" do
    base_digits.each do |decimal, roman|
      it "converts the decimal value #{decimal} to the roman value #{roman}" do
        RomanNumerals.to_roman(decimal).should == roman
      end
    end
    it "converts larger decimals" do
      RomanNumerals.to_roman(23234).should == 'MMMMMMMMMMMMMMMMMMMMMMMCCXXXIV'
      RomanNumerals.to_roman(42).should == 'XLII'
    end
  end
  describe ".to_decimal" do
    base_digits.each do |decimal, roman|
      it "converts the roman value #{roman} to the decimal value #{decimal}" do
        RomanNumerals.to_decimal(roman).should == decimal
      end
    end
    it "converts larger roman numerals" do
      RomanNumerals.to_decimal('MMMMMMMMMMMMMMMMMMMMMMMCCXXXIV').should == 23234
      RomanNumerals.to_decimal('XLII').should == 42
    end
    it "handles lower-case roman numerals" do
      RomanNumerals.to_decimal('mmmmmmmmmmmmmmmmmmmmmmmccxxxiv').should == 23234
      RomanNumerals.to_decimal('xlii').should == 42
    end
  end
end
