# class Box
#     def display_details()
#         @arr1 = [2,4,5,6,9]
#         @arr2 = [9,5,6,4,3]
#         @arr3 = @arr1 & @arr2
#         print "Common array elements:\n#{@arr3}"
#     end
# end
# obj= Box.new()
# obj.display_details()

class Box
    def duplicate(array)
        @dup = []
        array.each do |element|
        @dup << element if array.count(element) > 1
        end
        @dup.uniq
    end
end
obj = Box.new()
p obj.duplicate([11,12,12,14,15,16,11,14])

