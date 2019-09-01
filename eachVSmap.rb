=begin
Takeaway:

If you want to change the return value use map.

If you want to return the original return value use each.

Create method? it should do:
1) Take in an array of pizza toppings.
2) Iterate through each topping, one at a time.
3) Manipulate that data (do something to it).
4) Return the manipulated data.

I. Create using EACH: remember that each doesn`t change the return value,
it returns the original aaray
=end

topping = %w{pepperoni mushroom bacon pineapple}
        def pizza(topping)
          topping.each do |topping|
          puts "Ilove #{topping} pizza!"
         end
        end
   pizza(topping)
   
=begin
should print:
I love pepperoni pizza!
I love mushroom pizza!
I love bacon pizza!
I love pineapple pizza!

But return value still array:
=> ["pepperoni" ,"mushroom" ,"bacon" ,"pineapple"]

If we want to change the return value, we have to tell it to do so.

=end
topping = %w{pepperoni mushroom bacon pineapple}
        def pizza(topping)
        my_statement = []
          topping.each do |topping|
          my_statement << "Ilove #{topping} pizza!"
=begin
<< - this mean add to the end of this array" (see also here https://ruby-doc.org/core-2.6.4/Array.html#M000225)        
=end
         end
         my_statement
        end
   pizza(topping)
=begin
Now return value:
=> ["Ilove pepperoni pizza!",
    "Ilove mushroom pizza!", 
    "Ilove bacon pizza!", 
    "Ilove pineapple pizza!"]


if we do want to change the return value, there is a handy method 
called map, also known as collect. 
These two methods are synonyms for each other, 
and they implicitly return a new return value every time. 
Map and collect are abstractions of our each method:
=end
topping = %w{pepperoni mushroom bacon pineapple}
        def pizza(topping)
          topping.map do |topping|
          puts "Ilove #{topping} pizza!"
         end
        end
   pizza(topping)
   
 =begimn
 This method will return:
  => [nil, nil, nil, nil]
  Why nil?
If you look inside our map loop, you will see that we are using puts,
which always has a nil return value. 
What this is telling us is that our return value is indeed being 
changed by map. Let’s look at another example.
 =end
 
 topping = %w{pepperoni mushroom bacon pineapple}
        def pizza(topping)
          topping.map do |topping|
          "Ilove #{topping} pizza!"
         end
        end
   pizza(topping)
=begin 
It print:
=> ["Ilove pepperoni pizza!", 
"Ilove mushroom pizza!", 
"Ilove bacon pizza!", 
"Ilove pineapple pizza!"]
=end
