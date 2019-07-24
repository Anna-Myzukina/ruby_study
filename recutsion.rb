Fibonacci's Code: Recursion and Memoization for Ruby Beginners
LOGIN TO ACCESS CODE
   
 Eric O'Rear
 July 24, 2019
 Ruby for Beginners
Ruby for Beginners, from Beginners
This article will discuss…
The Fibonacci ‘formula’
Recursion and how Ruby finds our Fibonacci value
Bringing our Fibonacci algorithm to scale
Memoization
If you search 'fibonacci sequence ruby’ there are a lot of results. 
Most of the hits, like this one, are attempting an exploration of various fundamental 
Ruby concepts through the popular launch point of programming a Fibonacci sequence (and most succeed!). 
I’m writing this entry on the topic because I found a lack of clarity in connecting the articles’ text, 
and the concepts being communicated through it, to the code that I was analyzing. 
I could tell that everything made sense…but my understanding dissipated as 
I tried to map the text onto the code in my brainspace.

I want those connections to be crystal clear, and potentially help save my readers time and unnecessary mental anguish.

We need to be able to…
Calculate a Fibonacci number
Store that number in a data structure
Be able to access that stored Fibonacci value later
Our code needs to run up to the 1000th Fibonacci term (do you have a guess as to why?)
We are going to compare two solutions I struggled through on my own while attempting this challenge. 
The need for comparison will soon become evident.

“The Formula”
 fibonacci(n) = fibonacci(n-1) + fibonacci(n-2) 
Take a moment and see if you can suss out the meaning on your own if you aren’t already 
familiar with the formula or the sequence.

So what’s going on here? In short, the value of the nth term in the Fibonacci series is
equal to the sum of the two previous terms.

Remember, the Fibonacci series has only non-negative values. This is what the first 10 
values of the Fibonacci series look like as an array:

[0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
If fibonacci(n) = 21, what is the value of n? Remember that (n) represents an ordered place value, an index. 
So at what index does this fibonacci array = 21? That’s right…the 8th index (starting from 0th place).
We can say, fibonacci(8) = 21 = fibonacci(7) + fibonacci(6) = 13 + 8!

The Fibonacci Method and Recursion
Write a simple Ruby method that allows us to use the above formula (remember to account for (-) values).
Got it? Let’s compare!

def fibonacci(n)
  if n < 2
    n
  else  
    fibonacci(n-1) + fibonacci(n-2)
  end
end
Our if/else conditional allows us to weed out any n-values that would give us (-) 
Fibonacci values (0 and 1 both result in a negative value, and (-) indexes don’t make sense). 
Run this code with different n-values. Don’t be shy, use whatever numbers you’d like. Run into any problems yet?

Somewhere in the 30s you will definitely start to see your computer slowing down. 
If you run fibonacci(99) you will be waiting forever. Computers are powerful, and very, very fast,
but fibonacci(99) is asking an awful lot of our machine. And why is that? Because we have asked our computer to answer this problem using recursion, which means that our code calls itself (many many version of itself) to tackle this request.

fibonacci(10) looks something like this to our computer:

Fib Branching

The process already looks tedious, and I didn’t even type it all out! 
Imagine how this web of calculations looks for ~ fibonacci(100) or ~ fibonacci(1000). 
Before we move on to modifying our formula to incorporate a larger term value, 
I want to highlight a couple of things about recursion.

A recursive method (a method that calls itself!) needs a base case, and you can think
of the base case as giving the method a “way out” from the recursive behavior. 
Base cases can be used to account for nil values (which can trick up a lot of code), or for other purposes,
like in our example…wait, what is our base case?
It’s our if n < 2 half of the conditional, which gives us a base case of 0 and 1.

Recursion will always take its data towards the base case (this is how the loop closes).
If you look at the way the numbers are moving in the calculation web above, 
they are constantly working their way down…if you complete the web, 
you can see each branch end at fibonacci(0) and fibonacci (1).
Speeding Things Up with Memoization
Sometimes, faster isn’t just better, it’s the only way. 
Such is the case in finding our elusive fibonacci(1000).

Let’s look at our two solutions. Remember, we need to…

Calculate a Fibonacci number
Store that number in a data structure
Be able to access that Fibonacci value later
Our code needs to run up to fibonacci(1000)
Solution 1 a.k.a. “The Bad One”
The code:

def fibonacci(n)                                                                    
    return n if n <= 1                                                          
    fibonacci(n-1) + fibonacci(n-2)                                             
end

def fib_store(n)
    fib_array = []                                                              
    (0..n).each { |x| fib_array << fibonacci(x) }   
    fib_array
end  

fib_store(10)
Let’s test this solution against our requirements. If you run this code, then you will get (0..10) values for Fibonacci, 
and they are viewable in an array we called fib_array. So the first two are checked. But what about the third? 
Try this driver code after your methods to see if we can access the values we stored:

fib_store(10)
fib_array
Doesn’t work, does it? We will look into that in a second.

First, notice that in this algorithm we are using two methods. 
In the fibonacci method, we have our core computation logic. 
In fib_store we initialize an array, iterate over (0..n) index-values in that array
(n = the same value you entered in the fibonacci argument), and at each of those index-values, 
we run fibonacci with the same integer. So, at fib_array[n] we will have stored fibonacci(n). 
But, after fib_array is created and populated INSIDE that method, that information never has 
access to any data structure OUTSIDE of the method. That’s a negative on requirement 3.

We already know our data isn’t being stored in a useful way, but let’s check our code against the last requirement. 
We need to be able to run fib_store(1000).

Go ahead and run it.

Please, I’ll wait…

But not for this program to finish running, because that would take a L000NG time. 
We will need to look at my second solution to fulfill all of the requirements.

Solution 2 a.k.a. “The Good One”
The code:

@fib_hash = {}

def best_fib(n) 
  @fib_hash[n] =                                                                    
    if n <= 1                                                                       
      n                                                                             
    else 
      @fib_hash[n] ||= best_fib(n-1) + best_fib(n-2)                                
    end                                                                              
end 

best_fib(1000)
Hooray! We are finding values 30x further down the sequence than we were able to before. 
Why? Well, we need to understand what’s different about the two codes. 
Take a look at the two codes again and try to log the differences yourself.
Predict what changes these differences mean for our output.

The most obvious differences to me are how the two algorithms begin. 
In The Good One, we begin by initializing an empty hash instance (the @ matters).
The next most apparent difference is the method count. The Good One has been slimmed down to a single method, 
and ends up being a little bit shorter overall.

The Good One has a couple fancy operators in there as well.

The @ we used gave our fib_hash a hash-instance scope, allowing it to speak through the method barrier. 
This is a crucial difference between the two codes, as it enables memoization in The Good One. 
All memoization means in this case is that every time our hash receives a request for 
a new key-place value (our n-value), it is able to compare that against any already-present values. 
As our best_fib(n) moves recursively towards its [0, 1] base case, 
it doesn’t have to recalculate any repeated best_fib(x) calls, because they are already stored and accessible in the hash.

I won’t dive into ||= too much, because Peter Cooper already did an amazing job (seriously, read the article!).
Put briefly, it gives us an elegant way to use a solution if it is already present (the left side), 
or generate a new fibonacci branch if not (the right side).

How does The Good One stand up to our requirements?

It correctly calculates the nth Fibonacci value
It can store that value in a data structure
We were able to access @fib_hash after our method run
Our code can calculate up to n = 1000
Looks pretty good to me!

Mini-challenge:
Write a program that can:

Generate a random Fibonacci term between 0 and 1000.
Iterate a block a random number of times
Each time this block runs a random Fibonacci number (0..1000) must be generated, stored in a hash, 
and assigned a random key-value string (like, “Lorem”…ex; “Lorem” => 99)
Print your hash after the iterations
