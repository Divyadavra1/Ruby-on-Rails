class Box
    def display_details()
        @a = [3,5,7,9,11,13,15,10]
        @b = [2,4,6,8,10,12,14,15]    
        @odd_numbers = @a.select { | item | item.odd? }   
        @odd_numbers2 = @b.select { | item | item.even? }   

        p @odd_numbers.sum
        p @odd_numbers2.sum

    # puts @@a.select(&:odd?).sum
    # puts @@b.select(&:even?).sum
    # print @@odd_numbers
    # #  puts @@b.select(&:even?).sum
    end
end
obj= Box.new()
obj.display_details()


