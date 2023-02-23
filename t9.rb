class Box
    def display_details()
        puts "Enter the string"
        @str1 = gets.chomp
        puts  "Numbers of char #{@str1.size}"
        puts "Count spaces #{@str1.count(" ")}"
        @str2 = @str1.count("0-9")
        puts "Count numbers  #{@str2}"
        @str3 = @str1.count("a-zA-Z")
        puts "Count Letters #{@str3}"
        @str4 = @str1.count("^a-zA-Z0-9 ")       
         puts "Count Others characters : #{@str4}"
    end
end
obj= Box.new()
obj.display_details()
