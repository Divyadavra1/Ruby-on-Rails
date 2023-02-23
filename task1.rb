# class Box
#     def display_details()
#         @n1,@n2,@n3 = gets.chomp.split(" ").map(&:to_i)
#         range1 = (@n1..@n2).to_a
#         # p "Numbers : #{range1}"
#         print @num = range1.select { |range1| range1 % @n3 == 0 }
#         @n4 = @num.count
#         print "Count numbers :  #{@n4}"
#     end
# end
# obj= Box.new()
# obj.display_details()

class Geeks     
    def initialize
        @n1,@n2,@n3 = gets.chomp.split(" ").map(&:to_i)
    end
    def display
        range1 = (@n1..@n2).to_a
        print @num = range1.select { |range1| range1 % @n3 == 0 }
        @n4 = @num.count
        print "Count numbers :  #{@n4}"
    end
end
obj1 = Geeks.new()
obj1.display()