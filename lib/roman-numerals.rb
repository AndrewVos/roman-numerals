module RomanNumerals
  @base_digits = {
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

  def self.to_roman(value)
    result = ''
    @base_digits.keys.reverse.each do |decimal|
      while value >= decimal
        value -= decimal
        result += @base_digits[decimal]
      end
    end
    result
  end

  def self.to_decimal(value)
    value.upcase!
    result = 0
    @base_digits.values.reverse.each do |roman|
      while value.start_with? roman
        value = value.slice(roman.length, value.length)
        result += @base_digits.key roman
      end
    end
    result
  end
end
