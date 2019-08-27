# ruby_study :
Books, articles, different useful resources for study ruby:

<ul>
  <li>
    <a href="https://medium.com/pushtostart/strftime-in-ruby-bc7b268ee5ac">Strftime in Ruby</a>
  </li>
  <li>
    <a href="https://www.codementor.io/ruby-on-rails/tutorial/6-ruby-best-practices-beginners-should-know">6 Ruby Best Practices Beginners Should Know</a>
  </li>
  <li>
    <a href="https://apidock.com/ruby/Enumerable/find">Methods</a>
  </li>
  <li>
    <a href="https://rsdn.org/article/ruby/ruby_edges.xml">Ruby-новые грани</a>
  </li>
  <li>
    <a href="https://ru.wikibooks.org/wiki/Ruby/%D0%94%D0%BB%D1%8F_%D0%BD%D0%B0%D1%87%D0%B8%D0%BD%D0%B0%D1%8E%D1%89%D0%B8%D1%85#%D0%9F%D0%BE%D0%B8%D1%81%D0%BA_%D0%BC%D0%B0%D0%BA%D1%81%D0%B8%D0%BC%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE/%D0%BC%D0%B8%D0%BD%D0%B8%D0%BC%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE_%D1%8D%D0%BB%D0%B5%D0%BC%D0%B5%D0%BD%D1%82%D0%B0">Ruby/Для начинающих</a>
  </li>
  <li><a href="https://www.mikedane.com/programming-languages/ruby/methods/">The basics of programming in Ruby</a></li>
  <li>
<a href="https://www.rubyguides.com/2017/08/ruby-linked-list/">Practical Computer Science in Ruby</a>
  </li>
  <li>
<a href="http://ruby-doc.org/core-2.4.0/Enumerable.html">RubyStuff.com: The best Ruby T-shirts, mugs, bags, and mor</a>
  </li>
  <li>
<a href="https://www.8host.com/blog/rabota-s-massivami-v-ruby/">РАБОТА С МАССИВАМИ В RUBY</a>
  </li>
  <li>
<a href="https://rtfm.co.ua/books-translations/kus-ruby-s-nulya/ruby-s-nulya-chast-3-peremennye-konstanty-i-literaly/">Ruby: с нуля </a>
  </li>
  
  <li>
  <a href="https://medium.com/@zylberberg.jonathan/linked-lists-f656bd22f2fa">Linked Lists (Ruby)</a>
</li>
  <li>
<a href="https://rubymonk.com/learning/books/1-ruby-primer/chapters/6-objects/lessons/35-introduction-to-objects">Learn Ruby.
  Free, interactive tutorials to help you discover Ruby idioms, in your browser!</a></li>
  <li><a href="https://ruby-doc.org/">Documentation</a></li>
 </ul>

<h2>Play ruby : </h2>

1)<a href="https://www.sololearn.com/Play/Ruby">SoloLearn</a> 

2)<a href="https://www.hackerrank.com/domains/ruby">HackerRank</a> 

3)<a href="https://exercism.io/onboarding">Exercism</a> 

4)<a href="https://www.codecademy.com/learn/learn-ruby">CodeAcademy</a> 

5)<a href="https://rubymonk.com/">rubymonk Free, interactive tutorials</a> 

6)<a href="https://www.codequizzes.com/ruby/beginner/variables-strings-numbers">CodeQuizzes</a>



<h2>Video :</h2>

1)<a href="http://rubyschool.us/">Бесплатный курс по программированию на Ruby для начинающих</a>

2)FreeCodeCamp - 4 hours video <a href="https://www.youtube.com/watch?v=t_ispmWmdjY">Ruby Programming Language - Full Course </a>

3)<a href="https://www.youtube.com/watch?v=MB_41b42pRg"> Ruby on Visual Studio Code (required for class)</a>
<ul><h2>Ruby is:</h2></ul>

4)<a href="https://www.coursera.org/lecture/data-structures/stacks-UdKzQ">Stacks</a>

<li>High-level, meaning reading and writing Ruby is really easy—it looks a lot like regular English!</li>

<li>Object-oriented, meaning it allows users to manipulate data structures called objects in order to build and execute programs. We’ll learn more about objects later, but for now, all you need to know is everything in Ruby is an object.</li>

<li>Easy to use. Ruby was designed by Yukihiro Matsumoto (often just called “Matz”) in 1995. Matz set out to design a language that emphasized human needs over those of the computer, which is why Ruby is so easy to pick up.</li>


# Learning outcomes: https://quizlet.com/186336511/ruby-building-blocks-flash-cards/
## Numbers, Operators and Expressions:
- What’s the difference between an Integer and a Float? /an integer must be a whole, real number. For fractions or  other inexact(Для дробей или других неточных) numbers, we create floating point numbers, or float objects, instead.
To convert a floating point number in Ruby to a Ruby integer, you’d simply wrap the float in an integer, as shown below:

      Integer (950.12)
      => 950
To convert an integer into a floating point number, simply wrap it in float, like so:

      Float (20)
      => 20.0

- Why should you be careful when converting back and forth between integers and floats? / Any arithmetic done with a Float, Ruby will treat the return value as a Float.

- What’s the difference between =, ==, and ===? /
Answer:
        = is an assignment operator
        == checks the equality of 2 values
        === checks the equality and type of 2 values

- How do you do exponents in Ruby? 

        value ** exponent
- What is a range?


      A sequence of numbers between a starting value and an ending value.
- How do you create a range? https://ruby-doc.org/core-2.5.1/Range.html

      (1..10)
      (1...10)
      Range.new(0,2) // (0..2)
      
- What’s the difference between (1..3) and (1...3)?

      (1..3) is inclusive [1,2,2]  and (1...3) is exclusive [1,2] 
- What are three ways to create a range?

      Range.new(0, 2)
      (0..2)
      (0...2)
## Strings:
* What’s the difference between single and double quotes?
  
      Both are essentially the same except string interpolation can only be performed inside double quotes. 
      Not single quotes.
* What is string interpolation?

      Ruby's ability to run code within a string.
* What are escape characters?

      A string value proceeded with a backslash to represent a special meaning.
* What are line breaks?

      An escape character written as \n. This starts a newline within a string.


* How do you make other things into strings?

      #to_s
* How do you concatenate strings?

      Either the + operator or #concat
* How do you access a specific character or substring?

      string[index] or string[start, end]
* How do you split up strings into arrays?

      #split("")
* How are strings and arrays similar?

      Both can access their elements with square brackets.
* How do you get and clean up user input on the command line?

      #gets.chomp
* What does it mean that strings are “mutable” and why care?

      Mutable means the value can be modified. Not all value types are mutable.
* What is a symbol?

      An immutable object with its name proceeded with a semicolon. 
      They can never be changed. 
      Therefore they make great key names.
* How is a symbol different from a string?

      A string is mutable where as a symbol is immutable.
* What is a Regular Expression (RegEx)?

      A generic computer science method for matching a character or a set of characters in a string.   
* How can you center or right-justify a string?

      "hi".ljust(6,"") => "hi***"
      "hi".rjust(6) => " hi"
      "hi".center(6,"!") => "!!hi!!"
## Arrays:
- What are three ways to create an array?

      Array.new
      array = []
      %w{}
- How do you prepopulate the array with default data?

      Array.new(3) { |e| expression }
- How do you access items in an array?

      array[index]
- How can you access a specific group of items in an array?

      array[start, end]
- How do you modify the items in an array?

      array[index] = value
- How do you combine arrays?

      array + array
- How do you find the values in one array that aren’t in another?

      array1 - array2
      This takes away any and all values that are duplicate 
      in the right array from the left array.
- How do you find values in both arrays?

      [array]&[array]
- What is the difference between push/pop and shift/unshift?

      push appends a value to the end of an array where 
      pop removes the value from the end of the array.
      shift removes a value from the beginning of an array where 
      unshift prepends a value to the beginning.
- What is the shovel operator?

      <<
      It means the same thing as #push
- How is > arr.pop different from > arr[-1]?

      arr.pop is removing the last element of the array.
      arr[-1] is accessing the last element of the array.
- How is pushing or <<ing another array into your array different from just adding them together?

      Pushing prepends the right array as an element to the end of the left array.
      Adding the 2 arrays would concatenate them.
- How do you delete items in an array?

      #delete_at(index)
- Why should you be careful deleting items in an array?

      If you're deleting items inside a loop it will change the index of the other items.
- How can you convert arrays to strings?

      #join(delimeter)
- How can you convert from other data types to arrays?

      #to_a
- How can you figure out if an array contains a particular value?

      #include?(value)
- How do you find the biggest item in an array?

      #max
- How do you find the smallest item in an array?

      #min
- How do you remove any duplicates from your array?

      #uniq
- How do you find out how big an array is?

      #size or #length
- How do you put an array in order?

      #sort
- What are the naming conventions for arrays?

      Array names should be descriptive and plural.
- What should you store in arrays?

      Anything
## Hashes:
- What is a hash? 
        
       "a dictionary."

      A Hash is a dictionary-like collection of unique keys and their values.
      Also called associative arrays, they are similar to Arrays, 
      but where an Array uses integers as its index, a Hash allows you to use any object type.
- What are keys and values?

      
      "key is points to the memory location. Value is what's there"

      Hashes enumerate their values in the order that the corresponding keys were inserted.
- How is a hash similar to an Array?

      "it's still a collection of objects"

      Ruby's arrays and hashes are indexed collections. 
      Both store collections of objects, accessible using a key.
      Both arrays and hashes grow as needed to hold new elements.
      Any particular array or hash can hold objects of differing types; you can have an array containing an integer, a             string, and a floating point number
      Ruby hashes are similar to arrays. 
      A hash literal uses braces rather than square brackets. 
      The literal must supply two objects for every entry: one for the key, the other for the value.
      For example, you might want to map musical instruments to their orchestral sections. You could do this with a hash.
        instSection = {
          'cello'     => 'string',
          'clarinet'  => 'woodwind',
          'drum'      => 'percussion',
          'oboe'      => 'woodwind',
          'trumpet'   => 'brass',
          'violin'    => 'string'
        }
        Hashes are indexed using the same square bracket notation as arrays.
        instSection['oboe']	�	"woodwind"
        instSection['cello']	�	"string"
        instSection['bassoon']	�	nil
        - How is a hash different from an Array?

      With arrays, the key is an integer, whereas hashes support any object as a key.
- What are 3 ways to create a hash?

      Hash.new
      hash = {}
      #to_h
- What is the hash rocket?

      =>
      Assignment operator for key value pairs
      
      In Ruby you can create a Hash by assigning a key to a value with =>, 
      separate these key/value pairs with commas, and enclose the whole thing with curly braces.
- How do you access data in a hash?

      hash_name[key_name]
- How do you change data in a hash?

      hash_name[key_name] = value
- What types of data are good to store in a hash?

      Nuanced or more complex data than what would be put in an array.
      An object that has several different attributes.
- What are options hashes?

      A hash that is the last argument passed to a method.
      link_to 'click here', "http://www.example.com", :id => "my_special_link", :class => "clickable_link"
      
- How do you delete data from a hash?

      hash_name[key_name] = nil
      hash_name.delete(key_name)
- How do you add hashes together?

      hash1.merge(hash2)
- How do you list out all the keys or values?

      hash.keys
      hash.values
- How do you see if the hash contains a key or value?

      hash.key(key_name)
      hash.has_value(value)
- What is a set?

      A hash where all the values are either true or false. 
      Its useful because your computer can search more quickly 
      through this than an array trying to store the same information 
      due to way its set up behind the scenes.
## Dates and Times:
How do you get the current date and time?

      time = Time.now
      
    You can get an object that represents the current time using Time.now
    You can get the current date using Date.today
How do you find just the Year? Month? Hour? Second? Weekday?

    time = Time.now
    time.year
    time.month
    time.hour
    time.sec
    time.day

    The Date.parse method will try to parse any string that looks like a date.
    Date.parse("10/10/2010")  # -> 2010-10-10
    
    If you need something more strict you can use the Date.iso8601 method.
    An iso8601 date has the following format:
    year-month-day
- How do you create a Time specifically for 12/25/2013?

      time = Time.new(2013, 12, 25)
- How do you find how many days have passed between two Time’s?

      ((time1 - time2)/60/60/24).to_i
      "we're converting from seconds to minutes to days"
- What’s the difference between UTC and GMT and Local times?


      "UTC is the universal time"
      "GMT is based on english time"
- How would you find out the time that was 100 seconds ago? 10 days ago?

      "100 seconds ago:" Time.now-100
      "10 days ago:" Time.now - (10*24*60*60)
## Other Random Stuff:
- What is nil?

      nil is a special Ruby data type that means "nothing". it`s null
- How do you check if something is nil?

      .nil?
- What’s the difference between nil and blank and empty?

      nil? can be called on all objects and returns true for the nil object and false for anything else.
      empty? is a standard Ruby method on objects like Arrays, Hashes, and Strings. 
      Typically it returns true if the object         contains no elements.
      blank? is not a standard Ruby method but is added to all objects by Rails and returns true for nil, 
      false, empty, or a whitespace string.
- Are the following nil or empty? * " ", "", [], [""], {}
      
      "all empty, not nil"
      
- What’s the difference between puts and p and print?

      puts calls .to_s on the value, appends \n, and prints to the command line. Pretty output
      p calls .inspect on the value and prints to the command line. 
      Informative output print simply prints the value to the command line on 1 single line
      
      "p runs the inspect method"
      "puts runs the to_s method and adds a newline"
        "print runs to_s and doesn't add a new line"
- What does inspect do?

      Returns a string containing a human readable representation of obj.
      "inspect lets you see the innards of an object printed on the screen"
- What do +=, -=, *= and /= do?

        += "calls the + method of the first object and reassigns the memory location to the result"
        -= "is the same thing, but with the - method"
        a *= b "is the same as" a = a * b
        a /= b "is the same as" a = a/b
- What is parallel assignment?

        "when you assign the values of more than one variable at a time"
        a, b = "foo", "bar"
- What’s the easiest way to swap two variables?

      Parallel assignment
      var1, var2 = var2, var1
      
      a, b = b, a





<ul><h2>There are three data types in Ruby that we’re interested in right now: </h2>
  <li>-Numeric (any number), </li>
  <li>-Boolean (which can be true or false), and </li>
  <li>-String (words or phrases like "I'm learning Ruby!"). </li>
</ul>

<h2><a href="https://medium.com/metalanguage/nil-is-not-null-and-other-tales-febf6730f216">nil is an Object, NULL is a memory pointer</a></h2>
But in Ruby, nil is an object. You can use it as a value, you can call methods on it, you can define methods for it. It’s not NULL and it doesn’t make your programs vulnerable to things that NULL makes your program vulnerable to.



Арифметрические операторы Ruby
Предположим, что переменная a == 10, а переменная b == 20.

Оператор

Описание

Пример

+

сложение

a + b вернет 30

-

вычитание

a — b вернет -10

*

умножение

a * b вернет 200

/

деление

b / a вернет 2

%

деление по модулю

b % a вернет 0

**

возведение в степень

a**b вернет 10 в степени 20

Операторы сравнения
Оператор

Описание

Пример

==

True, если значения двух операндов одинаковы.

(a == b) is not true.

!=

True, если значения двух операндов не одинаковы.

(a != b) is true.

>

True, если левый операнд больше правого.

(a > b) is not true.

<

True, если правый операнд больше левого.

(a < b) is true.

>=

True, если левый операнд больше или равен правому.

(a >= b) is not true.

<=

True, если левый операнд меньше или равен правому.

(a <= b) is true.

<=>

Комбинированный оператор сравнения. Возвращает 0, если операнд слева равен операнду справа, 1 — если операнд слева больше, и -1 — если он меньше.

(a <=> b) returns -1.

===

Used to test equality within a when clause of a case statement.

(1…10) === 5 returns true.

.eql?

True, если оба операнда имеют одно и то же значение и тип.

1 == 1.0 returns true, but 1.eql?(1.0) is false.

equal?

True, если оба операнда имеют один и тот же object id.

if aObj is duplicate of bObj then aObj == bObj is true, a.equal?bObj is false but a.equal?aObj is true.

Операторы присваивания
Оператор

Описание

Пример

=

Присваивает значение справа операнду слева.

c = a + b will assigne value of a + b into c

+=

Присваивает операнд справа операнду слева, и результат присваивает левому операнду.

c += a is equivalent to c = c + a

-=

Вычитает операнд справа от операнда слева, и результат присваивает левому операнду.

c -= a is equivalent to c = c — a

*=

Аналогично, с умножением.

c *= a is equivalent to c = c * a

/=

Аналогично, с делением.

c /= a is equivalent to c = c / a

%=

Аналогично, с делением по модулю.

c %= a is equivalent to c = c % a

**=

Аналогично, с с возведением в степень.

c **= a is equivalent to c = c ** a

Операторы параллельного присваивания
Ruby позволяет инициализировать несколько переменных в одну строк.

Например, код:

1
a = 10
2
b = 20
3
c = 30
можно записать в таком виде:

1
a, b, c = 10, 20, 30
Кроме того — таким образом можно присвоить значение одной переменной — другой:

1
a, b = b, c
Логические операторы Ruby
Оператор

Описание

Пример

and

Логический опратор «И» (AND). True, если оба значения равны.

(a and b) is true.

or

Логический опратор «ИЛИ» (OR). True, если одно из значений не ноль.

(a or b) is true.

&&

Логический опратор «И» (AND). True,  если оба операнда не ноль.

(a && b) is true.

||

Логический опратор «ИЛИ» (OR). True, если хотя бы один из операндов не ноль.

(a || b) is true.

!

Логический опратор «НЕТ» (NOT). Если выражение возвращает True — то оператор ! вернет False.

!(a && b) is false.

not

Аналогично.

not(a && b) is false.

Тернарный (условный) оператор в Ruby
В Ruby имеется специальный «тройной» (лат. ternarius — «тройной») оператор, который проверяет является ли условие истиной, а потом выполняет одно или два заданных действия, в зависимости от результата проверки.

Его синтаксис выглядит так:

Оператор

Описание

Пример

? :

условное выражение

Если выражение True, Тогда значение X: Иначе значение Y

Операторы диапазона
Операторы диапазона последовательностей (range operators) используются для создания последовательности значение.

В Ruby для этой цели имеются операторы «..» и «...«. При использовании «..» — в перечисление не будет включен последний элемент этой последовательности, а при использовании «...» — будет.

Оператор

Описание

Пример

..

Создает диапазон, включающий последнее значение

1..10 Creates a range from 1 to 10 inclusive

...

Создает диапазон, исключающий последнее значение

1…10 Creates a range from 1 to 9

Оператор defined?
defined? — специальный оператор в Ruby, который используется проверки переданного ему выражения.

Пример 1

1
defined? variable # True если переменная проиницилизирована
1
irb(main):001:0> foo = 42
2
=> 42
3
irb(main):002:0> defined? foo
4
=> "local-variable"
5
irb(main):003:0> defined? $_
6
=> "global-variable"
7
irb(main):004:0> defined? bar
8
=> nil
Пример 2

1
defined? method_call # True если метод существует
1
irb(main):005:0> defined? puts
2
=> "method"
3
irb(main):006:0> defined? puts(bar)
4
=> nil
5
irb(main):007:0> defined? unpack
6
=> nil
Ruby операторы «.» и «::»
Вы можете обратиться к методу модуля с помощью оператора «.«, а к константе — с помощью двойного двоеточия «::«.

«::» является унарным оператором, который позволяет вызвать константу, метод инстанса или класса из другого модуля или класса.

Пример 1

01
#!/usr/bin/env ruby -w
02
 
03
MR_COUNT = 0        # определяем константу класса Object
04
 
05
module Foo
06
  MR_COUNT = 0
07
  ::MR_COUNT = 1    # меняем значение глобальной константы == 1
08
  MR_COUNT = 2      # меняем значение локальной константы == 1
09
end
10
 
11
puts "Global: #{MR_COUNT}"      # значение глобальной константы
12
puts "Lolcal: #{Foo::MR_COUNT}" # значение локальной константы
Результат:

1
$ ./dd.rb
2
./dd.rb:7: warning: already initialized constant MR_COUNT
3
./dd.rb:3: warning: previous definition of MR_COUNT was here
4
./dd.rb:8: warning: already initialized constant Foo::MR_COUNT
5
./dd.rb:6: warning: previous definition of MR_COUNT was here
6
Global: 1
7
Lolcal: 2
Пример 2

01
#!/usr/bin/env ruby
02
 
03
CONST = ' out there'
04
 
05
class Inside_one
06
   CONST = proc {' in there'}
07
   def where_is_my_CONST
08
      ::CONST + ' inside one'
09
   end
10
end
11
 
12
class Inside_two
13
   CONST = ' inside two'
14
   def where_is_my_CONST
15
      CONST
16
   end
17
end
18
 
19
puts Inside_one.new.where_is_my_CONST
20
puts Inside_two.new.where_is_my_CONST
21
puts Object::CONST + Inside_two::CONST
22
puts Inside_two::CONST + CONST
23
puts Inside_one::CONST
24
puts Inside_one::CONST.call + Inside_two::CONST
Результат:

1
$ ./colon2.rb
2
 out there inside one
3
 inside two
4
 out there inside two
5
 inside two out there
6
#<Proc:0x007f9be60aac38@./colon2.rb:6>
7
 in there inside two
Старшинство операторов в  Ruby
Список ниже приводит список всех операторов в порядке их старшинства:

Method

Оператор

Описание

Yes

::

Constant resolution operator

Yes

[ ] [ ]=

Element reference, element set

Yes

**

Exponentiation (raise to the power)

Yes

! ~ + —

Not, complement, unary plus and minus (method names for the last two are +@ and -@)

Yes

* / %

Multiply, divide, and modulo

Yes

+ -

Addition and subtraction

Yes

>> <<

Right and left bitwise shift

Yes

&

Bitwise ‘AND’

Yes

^ |

Bitwise exclusive `OR’ and regular `OR’

Yes

<= < > >=

Comparison operators

Yes

<=> == === != =~ !~

Equality and pattern match operators (!= and !~ may not be defined as methods)

&&

Logical ‘AND’

||

Logical ‘OR’

.. ...

Range (inclusive and exclusive)

? :

Ternary if-then-else

= %= { /= -= += |= &= >>= <<= *= &&= ||= **=

Assignment

defined?

Check if specified symbol defined

not

Logical negation

or and

Logical composition

Операторы, для которых указан «Yes» в колонке «Method» являются методами, и могут быть переопределены.
