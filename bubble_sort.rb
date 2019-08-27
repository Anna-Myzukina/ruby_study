=begin
Build a method #bubble_sort that takes an array and returns a sorted array. 
It must use the bubble sort methodology :
each element is compared to the one next to it and they are swapped if the one on the left is larger than the one on the right.
This continues until the array is eventually sorted.
=end

def bubble_sort(array)
    swapped = true
    until !swapped do
        swapped = false
        for i in 0...array.length - 1 do
            if array[i+1] < array[i]
                array[i], array[i+1] = array[i+1], array[i]
                swapped = true
            end
        end
    end
    return array
end
