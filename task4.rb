class Box
    def display_details()
        # loop do
    for i in (1..3) 
        def run
        puts "Welcome to My Shop"
        puts "Today's Details"
        puts "Total Order : #{@order}"
        puts "Total Amount : #{@total}"
        puts "Minimum Order : #{@mini}"
        puts "Maximum Order : #{@maximum} "
        puts "Average Order : #{@avg}"
        puts "1.Create New Order."
        puts "2.Print Day Details."
        puts "3.Print Month Details."
        puts "How may i help You?(1,2,3 or quit)"
        # @total = 0
        end
        (1..3).each do
            run
            # break if @op == "q"
                # num = ["q,Q,Quit"]
                # num.each do |op|
                #     break if @op == num    

                @op = gets.chomp.to_i  
                require 'date' 
                    if @op == 1
                    puts "Option 1: Create new order." 
                    puts Date.strptime('07-08-2018', '%d-%m-%Y')  
                    # array = []    
                    @total = gets.chomp.to_i
                    
                    # array.push(@total)   
                        # puts array
                    # array = .split(' ').map{ |value| value.to_i }     
                    # @mini = array.min
                    # @maximum = array.max()
                    # @mini = array.min
                    @order = @op + @op
                    @avg = @total / @order
                    elsif @op == 2
                    puts "Option 2: Print Day Details."
                    @op3 = gets.chomp.to_i    
                    elsif @op == 3
                    puts "Option 3: Print Month Details."
                    else 
                        puts "no"   

                end     
            end
         
            # end
        end
    end
end
obj= Box.new()
obj.display_details