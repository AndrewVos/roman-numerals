= roman-numerals

== Usage
In order to use the roman numerals gem, you need to add "roman-numerals" to your Gemfile
    gem 'roman-numerals'

=== Converting to a roman numeral
In order to convert a number to a roman numeral, call the to_roman method:
    RomanNumerals.to_roman(1)

=== Converting to a decimal
In order to convert to a decimal from a roman numeral, call the to_decimal method
    RomanNumerals.to_decimal('I')
    RomanNumerals.to_decimal('IIII')      # => ArgumentError

== Contributing to roman-numerals
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

== Copyright

Copyright (c) 2011 Andrew Vos. See LICENSE.txt for
further details.
