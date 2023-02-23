class Box
    def display_details()
        s = "hello how are you"
        print s[0]
        print s[3]    
        print s[-1] 
        print s[-2] 
    end
end
obj= Box.new()
obj.display_details()