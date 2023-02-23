class Box
    def initialize
        @l = gets.chomp.to_i
        @x = gets.chomp.to_i
    end
    def display_details
        array = []
        for i in 1..@x do
            @width, @height = gets.chomp.split(" ").map(&:to_i)
            if (@width < @l) || (@height < @l)
            array.push("image not valid")
            elsif (@width > @l && @height > @l) && (@width == @height)
            array.push("Perfect")
            elsif (@width > @l && @height > @l) && (@width != @height)
            array.push("Crop and accept")
            else
            array.push("image not available")
            end
        end
        puts array
    end
end
obj= Box.new()
obj.display_details
