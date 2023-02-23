# class Box
#     def display_details()
#         @a = [18, 22, 33, 5, 6]
#         puts "reverse the array contents : #{@a.reverse()}\n\n"
#     end
# end
# obj= Box.new()
# obj.display_details()

class Box
    def reverse_array(a)
        @right=a.length-1
        @rev=0
    while(@rev<@right)
        @num=a[@rev]    
        a[@rev]=a[@right]
        a[@right]=@num
        
        @rev+=1
        @right-=1
    end
    print a
    end
end
obj= Box.new()
obj.reverse_array([11,12,13,14,15]) 
