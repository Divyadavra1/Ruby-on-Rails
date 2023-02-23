# class Box
#     def display_details()
#         @arr = [25,6,45,32,43,65]
#         puts "sort numeric array : #{@arr.sort}"
#     # def check_string(str)
#     #     return str.chars.sort
#     #  end
#     #  print check_string("sds")
#         @a = ["abc","kla","bha","jak"]
#         puts "sort array string : #{@a.sort()}"
#     end
# end
# obj= Box.new()
# obj.display_details()   
class Box
    def bubble_sort(array)
        @array_length = array.size
    return array if @array_length <= 1
    loop do
      @swapped = false
      (@array_length-1).times do |i|
        if array[i] > array[i+1]
          array[i], array[i+1] = array[i+1], array[i]
          @swapped = true
        end
      end
      break if not @swapped
    end
    array
  end
end
obj= Box.new()
@unsorted_array = [11,5,7,6,15]
@unsorted_array2 = ["abc","kla","bha","jak"]
p obj.bubble_sort(@unsorted_array)
p obj.bubble_sort(@unsorted_array2)


  
  