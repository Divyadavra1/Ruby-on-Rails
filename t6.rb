class Box
    def display_details()
        puts "Enter a"
        @a = gets.chomp.to_i
        puts "Enter b"
        @b = gets.chomp.to_i
        @sum = @a+@b
        @sum2 = @a-@b
        @sum3 = @a*@b
        @sum4 = @a/@b
 
        puts "The add is #{@sum}"
        puts "The sub is #{@sum2}"
        puts "The multiply is #{@sum3}"
        puts "The division is #{@sum4}"
    end
end
obj= Box.new()
obj.display_details()
