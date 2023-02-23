class Box
    def display_details()
        @num1 = 5
        @num2 = 2
        @num3 = 34
        @num4 = 99
        
        puts @num1.odd? 
        puts @num2.odd?
        puts @num3.odd? 
        puts @num4.odd?
    end
end
obj= Box.new()
obj.display_details()
