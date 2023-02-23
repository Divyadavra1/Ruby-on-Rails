class Box
    def display_details()
        puts "Enter first"
        @n1 = gets.to_i
        puts "Enter second"
        @n2 = gets.to_i
        puts "Enter third"
        @n3 = gets.to_i
        @avg = (@n1 + @n2 + @n3) / 3.0
        puts "Average is #{@avg}"
    end
end
obj= Box.new()
obj.display_details()

