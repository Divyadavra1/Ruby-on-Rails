# require 'date' 
  
# print Julian day number           
# puts Date.jd(2451377)   
  
# # print commercial date  
# puts Date.commercial(2019,5,2)     
# puts Time.new(2019,4,6).to_date     
# a = gets.chomp
# puts Date.strptime('07-08-2018', '%d-%m-%Y')   
# # print ordinal date
# puts Date.ordinal(2018,15)    
# # puts Date.new(2018,4,5) 
# puts "Please enter a positive number..."
# number = gets.chomp.to_i

# puts "Sum of all numbers is: #{ (1..number).inject { |sum, n| sum + n} }"
#!/user/bin/ruby
# puts 'Type in as many words as you\'d like. When you\'re finished, press enter on an empty line'
# array = []
# input = ' '
# while input != ''
#   input = gets.chomp
#   array.push input
# end

# puts
# input “1 2 3 4 5″
# Ruby program for to_a() 
# method in Range 
  
# Initialize range 
# Initializing some arrays of elements
# Array1 = []
# Array2 = ["a", "b", "c"]
# Array3 = ["gfg", "Geeks", "GeeksforGeeks"]
# total = gets.chomp.to_i
# # Calling push() function
# A = Array1.push(total)                
# B = Array2.push("d", "e", "f")               
# C = Array3.push("Geek")  
   
# # Printing the array of pushed element
# s = A.max()
# puts "#{s}"
# puts "#{A}"
# puts "#{B}"
# puts "#{C}"
# ruby
class Order
  attr_accessor :date, :amount

  def initialize(date, amount)
    @date = date
    @amount = amount
  end
end

class Shop
  def initialize
    @orders = []
  end

  def run
    puts "Welcome to My Shop\n\n"

    loop do
      puts "Today's Details"
      puts "Total Order #: #{total_orders}"
      puts "Total Amount: #{total_amount}"
      puts "Minimum Order: #{minimum_order}"
      puts "Maximum Order: #{maximum_order}"
      puts "Average Order: #{average_order}\n\n"

      puts "1 Create New Order"
      puts "2 Print Day Details"
      puts "3 Print Month Details"
      puts "How may I help you?(1, 2, 3 or quit)"

      input = gets.chomp.downcase
      case input
      when "1", "create new order"
        create_order
      when "2", "print day details"
        print_day_details
      when "3", "print month details"
        print_month_details
      when "q", "quit"
        break
      else
        puts "Invalid input. Please try again."
      end
    end
  end
end

  private

  def total_orders
    @orders.size
  end

  def total_amount
    @orders.sum(&:amount)
  end

  def minimum_order
    @orders.map(&:amount).min || 0
  end

  def maximum_order
    @orders.map(&:amount).max || 0
  end

  def average_order
    @orders.empty? ? 0 : total_amount / total_orders
  end

  def create_order
    puts "Input order details in the format dd-mm-yyyy amount:"
    input = gets.chomp.split(" ")
    date = input[0]
    amount = input[1].to_i
    @orders << Order.new(date, amount)
    puts "Order created.\n\n"
  end

  # def print_day_details
  #   puts "Input the day in the format dd-mm-yyyy:"
  #   input = gets.chomp
  #   orders = @orders.select { |order| order.date == input }
  #   if orders.empty?
  #     puts "No orders found for that day.\n\n"
  #   else
  #     total = orders.sum(&:amount)
  #     puts "Total Order #: #{orders.size}"
  #     puts "Total Amount: #{total}"
  #     puts "Minimum Order: #{orders.map(&:amount).min}"
  #     puts "Maximum Order: #{orders.map(&:amount).max}"
  #     puts "Average Order: #{total / orders.size}\n\n"
  #   end
  # end

  # def print_month_details
  #   puts "Input the month and year in the format mm yyyy:"
  #   input = gets.chomp.split(" ")
  #   month = input[0].to_i
  #   year = input[1].to_i
  #   orders = @orders.select do |order|
  #     order_date = order.date.split("-")
  #     order_month = order_date[1].to_i
  #     order_year = order_date[2].to_i
  #     order_month == month && order_year == year
  #   end
  #   if orders.empty?
  #     puts "No orders found for that month.\n\n"
  #   else
  #     total = orders.sum(&:amount)
  #     puts "Total Order #: #{orders.size}"
  #     puts "Total Amount: #{total}"
  #     puts "Minimum Order: #{orders.map(&:amount).min}"
  #     puts "Maximum Order: #{orders.map(&:amount).max}"
  #     puts "Average Order: #{total}"
  #   end
