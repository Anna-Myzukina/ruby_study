=begin
Ruby Ranges: How Do They Work?

A range is an object which has a starting value & ending value, they help you create sequences
that span the whole range between these two values.

You could go from 1 to 20, or from "a" to "z".

Just as a reminder, this is what Ruby range syntax looks like:

        (1..20)

The parenthesis are not necessary to define a Range.

But if you want to call methods on your range you will need them. 
Otherwise, you are calling the method on the 2nd element of the range, instead of the range itself.

The Range class includes Enumerable, so you get all the powerful iteration methods without having to convert 
the range into an array.

Range has some useful methods, like the step method.

Example:

        (10..20).step(2).to_a
        # [10, 12, 14, 16, 18, 20]
        
Using this method you can iterate over the range in increments of n, where n is the argument passed to step.

How to Find Out If A Number is Inside a Range
Other Range methods to be aware of are: cover? & include?.

It would be a mistake to think that they do the same thing, because they don’t.

The include? method just does what you would expect, check for inclusion inside the range. 
So it would be equivalent to expanding the Range into an Array and checking if something is in there.

But cover? is different, all it does is check against the initial & ending values of the range (begin <= obj <= end), 
which can yield unexpected results.

Example:

        ('a'..'z').include? "cc" # false
        ('a'..'z').cover? "cc"   # true
        The cover? example is equivalent to:

        "a" <= "cc" && "cc" <= "z"
        
The reason this returns true is that strings are compared character by character. 
Since "a" comes before "c", the characters that come after the first "c" don't matter.

How Ranges Are Implemented in Ruby
Ranges are not limited to numbers & letters, you can use any objects as long as they implement the following methods: 
<=> and succ.

For example, here is a DateTime range:

            require 'time'
            t1 = DateTime.new
            t2 = DateTime.new + 30
            next_30_days = t1..t2
            # Example use
            next_30_days.select(&:friday?).map(&:day)
            So how does this work? Let's take a look at this implementation:

            def range(a, b)
              # if the first element is bigger than the second
              # then this isn't a sequential range
              return [] if a > b
              out = []
              # advance until the 2nd element is the same
              # as the first one
              while a != b
                out << a
                a = a.next
              end
              # add last element (inclusive range)
              # this also returns the results via implicit return
              out << a
            end
            p range 1, 10
            p range 'a', 'z'
            
I added some comments to help you understand what is going on.

The idea is that we keep calling the next method on the first object until it is equal to the second one, 
the assumption is that they will eventually meet.

Custom Class Ranges
Most of the time you will be using number & character ranges, but it's still 
good to know how you can use ranges in a custom class.

Example:

            class LetterMultiplier
              attr_reader :count
              include Comparable
              def initialize(letter, count)
                @letter = letter
                @count  = count
              end
              def succ
                self.class.new(@letter, @count + 1)
              end
              def <=>(other)
                count <=> other.count
              end
            end
            a = LetterMultiplier.new('w', 2)
            b = LetterMultiplier.new('w', 8)
            # Print array with all the items in the range
            p Array(a..b)
            
The key here is to make sure that you implement the <=> & succ methods correctly.

If you want to use the include? method you need to include the Comparable module, 
which adds methods like ==, <, and > (all based on the results of the <=> method).

Conclusion
In this article you have learned how ranges work in Ruby so you can understand them 
better & implement your own objects that support range operations.


=end
