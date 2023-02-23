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
      puts "Welcome to My Shop\n\nToday's Details\n"
      print_day_details
  
      loop do
        puts "\nHow may I help you? (1, 2, 3 or quit)"
        input = gets.chomp.downcase
  
        case input
        when "1"
          create_new_order
        when "2"
          print_day_details
        when "3"
          print_month_details
        when "q", "quit"
          break
        else
          puts "Invalid input. Please try again."
        end
      end
    end
  
    private
  
    def create_new_order
      puts "Please enter the date and amount of the new order (format: dd-mm-yyyy amount):"
      input = gets.chomp.split
      date = input[0]
      amount = input[1].to_f
      @orders << Order.new(date, amount)
      puts "New order added."
    end
  
    def print_day_details
      today = Time.now.strftime("%d-%m-%Y")
      orders_today = @orders.select { |order| order.date == today }
      total_amount = orders_today.sum(&:amount)
      minimum_order = orders_today.min_by(&:amount)&.amount || 0
      maximum_order = orders_today.max_by(&:amount)&.amount || 0
      average_order = orders_today.empty? ? 0 : total_amount / orders_today.length
  
      puts "Total Order #: #{orders_today.length}"
      puts "Total Amount: #{total_amount}"
      puts "Minimum Order: #{minimum_order}"
      puts "Maximum Order: #{maximum_order}"
      puts "Average Order: #{average_order}"
    end
  
    def print_month_details
      puts "Please enter the month and year to show details for (format: month year):"
      input = gets.chomp.split
      month = input[0].to_i
      year = input[1].to_i
      orders_month = @orders.select do |order|
        order_month = order.date.split("-")[1].to_i
        order_year = order.date.split("-")[2].to_i
        order_month == month && order_year == year
      end
      total_amount = orders_month.sum(&:amount)
      minimum_order = orders_month.min_by(&:amount)&.amount || 0
      maximum_order = orders_month.max_by(&:amount)&.amount || 0
      average_order = orders_month.empty? ? 0 : total_amount / orders_month.length
  
      puts "Total Order #: #{orders_month.length}"
      puts "Total Amount: #{total_amount}"
      puts "Minimum Order: #{minimum_order}"
      puts "Maximum Order: #{maximum_order}"
      puts "Average Order: #{average_order}"
    end
  end
  
  shop = Shop.new
  shop.run
  
  
#   The program uses two classes: `Order` to store information about each order, and `Shop` to manage the orders and provide the functionality to the user.
  
#   When the program starts, it displays the day's details using the `print_day_details` method, which calculates and prints the total number of orders, total amount, minimum order, maximum order, and average order for the current day.
  
#   The program then enters a loop where it asks the user for input. If the user enters `1`, the program prompts the user for the date and amount of a new order, creates a