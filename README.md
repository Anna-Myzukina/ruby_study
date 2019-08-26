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


# Learning outcomes:
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
* What is string interpolation?
* What are escape characters?
* What are line breaks?
* How do you make other things into strings?
* How do you concatenate strings?
* How do you access a specific character or substring?
* How do you split up strings into arrays?
* How are strings and arrays similar?
* How do you get and clean up user input on the command line?
* What does it mean that strings are “mutable” and why care?
* What is a symbol?
* How is a symbol different from a string?
* What is a Regular Expression (RegEx)?
* How can you center or right-justify a string?
## Arrays:
What are three ways to create an array?
How do you prepopulate the array with default data?
How do you access items in an array?
How can you access a specific group of items in an array?
How do you modify the items in an array?
How do you combine arrays?
How do you find the values in one array that aren’t in another?
How do you find values in both arrays?
What is the difference between push/pop and shift/unshift?
What is the shovel operator?
How is > arr.pop different from > arr[-1]?
How is pushing or <<ing another array into your array different from just adding them together?
How do you delete items in an array?
Why should you be careful deleting items in an array?
How can you convert arrays to strings?
How can you convert from other data types to arrays?
How can you figure out if an array contains a particular value?
How do you find the biggest item in an array?
How do you find the smallest item in an array?
How do you remove any duplicates from your array?
How do you find out how big an array is?
How do you put an array in order?
What are the naming conventions for arrays?
What should you store in arrays?
## Hashes:
What is a hash?
What are keys and values?
How is a hash similar to an Array?
How is a hash different from an Array?
What are 3 ways to create a hash?
What is the hash rocket?
How do you access data in a hash?
How do you change data in a hash?
What types of data are good to store in a hash?
What are options hashes?
How do you delete data from a hash?
How do you add hashes together?
How do you list out all the keys or values?
How do you see if the hash contains a key or value?
What is a set?
## Dates and Times:
How do you get the current date and time?
How do you find just the Year? Month? Hour? Second? Weekday?
How do you create a Time specifically for 12/25/2013?
How do you find how many days have passed between two Time’s?
What’s the difference between UTC and GMT and Local times?
How would you find out the time that was 100 seconds ago? 10 days ago?
## Other Random Stuff:
What is nil?
How do you check if something is nil?
What’s the difference between nil and blank and empty?
Are the following nil or empty? * " ", "", [], [""], {}
What’s the difference between puts and p and print?
What does inspect do?
What do +=, -=, *= and /= do?
What is parallel assignment?
What’s the easiest way to swap two variables?






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
