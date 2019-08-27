=begin
Build a method #bubble_sort that takes an array and returns a sorted array. 
It must use the bubble sort methodology :
each element is compared to the one next to it and they are swapped if the one on the left is larger than the one on the right.
This continues until the array is eventually sorted.
=end

def bubble_sort(array)
  swapped = true
  while swapped
    swapped = false
    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
  end
end

=begin
Now create a similar method called #bubble_sort_by which sorts an array by accepting a block. 
Remember to use 
        yield 
inside your method definition to accomplish this. 
The block will have two arguments that represent the two elements of the array that are currently being compared. 
The block’s return will be similar to the spaceship operator you learned about before: 
If the result of the block execution is negative, the element on the left is “smaller” than the element on the right. 
0 means both elements are equal. 
A positive result means the left element is greater. 
Use the block’s return value to sort your array. Test your method with the example below.
  > bubble_sort_by(["hi","hello","hey"]) do |left,right|
  >   left.length - right.length
  > end
  => ["hi", "hey", "hello"]
=end

def bubble_sort_by(array)
  swapped = true
  while swapped
    swapped = false
    (array.length - 1).times do |i|
      if yield(array[i], array[i + 1]) > 0
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
  end
end
