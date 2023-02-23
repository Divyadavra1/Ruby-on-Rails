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
    puts "Welcome to My Shop"
    loop do
      puts "\nToday's Details"
      puts "Total Order #: #{@orders.length}"
      puts "Total Amount: #{total_amount}"
      puts "Minimum Order: #{minimum_order}"
      puts "Maximum Order: #{maximum_order}"
      puts "Average Order: #{average_order}"
      puts "\n1 Create New Order"
      puts "2 Print Day Details"
      puts "3 Print Month Details"
      puts "How may I help you?(1, 2, 3 or quit)"
      input = gets.chomp.downcase
      case input
      when "1"
        create_order
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

  def create_order
    puts "Please enter the order date (DD-MM-YYYY format):"
    date = gets.chomp
    puts "Please enter the order amount:"
    amount = gets.chomp.to_i
    order = Order.new(date, amount)
    @orders << order
    puts "Order created successfully."
  end

  def print_day_details
    puts "Please enter the date to print details (DD-MM-YYYY format):"
    date = gets.chomp
    orders = @orders.select { |order| order.date == date }
    if orders.empty?
      puts "No orders found for this date."
    else
      puts "Orders for #{date}:"
      orders.each { |order| puts "- #{order.amount}" }
      puts "Total Amount: #{orders.map(&:amount).reduce(&:+)}"
    end
  end

  def print_month_details
    puts "Please enter the month and year to print details (MM YYYY format):"
    input = gets.chomp.split(" ")
    month = input[0].to_i
    year = input[1].to_i
    orders = @orders.select do |order|
      order_date = Date.parse(order.date)
      order_date.month == month && order_date.year == year
    end
    if orders.empty?
      puts "No orders found for this month."
    else
      puts "Orders for #{Date::MONTHNAMES[month]} #{year}:"
      orders.each { |order| puts "- #{order.amount}" }
      puts "Total Amount: #{orders.map(&:amount).reduce(&:+)}"
    end
  end

  def total_amount
    @orders.map(&:amount).reduce(&:+)
  end

  def minimum_order
    @orders.map(&:amount).min
  end

  def maximum_order
    @orders.map(&:amount).max
  end

  def average_order
    return 0 if @orders.empty?

    total_amount / @orders.length
  end
end

shop = Shop.new
shop.run

