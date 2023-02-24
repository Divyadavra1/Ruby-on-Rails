class Welcome
  attr_accessor :date, :amount

  def initialize(date, amount)
    @date = date
    @amount = amount
  end
end

class View
  def initialize
    @orders = []
  end

  def run
    puts "Welcome to My Shop"
    # loop do
      puts "\nToday's Details: "
      puts "Total Order #: #{@orders.length}"
      puts "Total Amount: #{total_amount}"
      puts "Minimum Order: #{minimum_order}"
      puts "Maximum Order: #{maximum_order}"
      puts "Average Order: #{average_order}"
    loop do
      puts "\n1 Create New Order"
      puts "2 Print Day Details"
      puts "3 Print Month Details"
      puts "How may I help you?(1, 2, 3 or quit)"
      input = gets.chomp.downcase
      case input
      when "1"
        create_order
      when "2"
        day_details
      when "3"
        month_details
      when "q", "quit"
        break
      else
        puts "Invalid."
      end
    # end
    end
  end

  require "date"
  def create_order
    puts "Create New Order:"
    str = gets.chomp.split
    # date = Date.strptime(str, '%d-%m-%Y')
    date = str[0]
    amount = str[1].to_i
    # amount = gets.chomp.to_i
    order = Welcome.new(date, amount)
    @orders << order
    puts "\nToday's Details: #{order.date}"
    puts "Total Order #: #{@orders.length}"
    puts "Total Amount: #{total_amount}"
    puts "Minimum Order: #{minimum_order}"
    puts "Maximum Order: #{maximum_order}"
    puts "Average Order: #{average_order}"
  end

  def day_details
    puts "Print Day Details:"
    date = gets.chomp
    # dates = Date.strptime(strr, '%d-%m-%Y')
    orderss = @orders.select { |order| order.date == date }
    puts "Todays Details:#{date}"
    puts "Total Order: #{orderss.length}"
    puts "Total Amount: #{ if orderss.length == 0  then "0"
                          else 
                              orderss.map(&:amount).reduce(&:+) end}"
    puts "Minimum:  #{if orderss.length == 0  then "0"
                      else 
                          orderss.map(&:amount).min end}"
    puts "Maximum:  #{if orderss.length == 0  then "0"
                      else 
                        orderss.map(&:amount).max end}"
    puts "Average:  #{if orderss.length == 0  then "0"
                    else 
                        orderss.map(&:amount).reduce(&:+)/(orderss.length) end}"
  end

  def month_details
    puts "Print Month Details"
    str = gets.chomp.split(" ")
    month = str[0].to_i
    year = str[1].to_i
    orders = @orders.select do |order|
      order_date = Date.parse(order.date)
      order_date.month == month && order_date.year == year
      # puts "Today's Details : #{order_date}"
      # puts "Total Amount: #{orders.map(&:amount).reduce(&:+)}"
    end
    # puts "Todays Details:}"
    puts "Total Order: #{orders.length}"
    puts "Total Amount: #{if orders.length == 0  then "0"
                        else 
                            orders.map(&:amount).reduce(&:+) end}"
    puts "Minimum : #{if orders.length == 0  then "0"
                        else 
                            orders.map(&:amount).min end}"
    puts "Maximum : #{if orders.length == 0  then "0"
                        else 
                            orders.map(&:amount).max end}"
    puts "Average  :#{if orders.length == 0  then "0"
                        else 
                            orders.map(&:amount).reduce(&:+)/(orders.length) end}"        
  end
  
  def total_amount
    return 0 if @orders.empty?

    @orders.map(&:amount).reduce(&:+)
  end

  def minimum_order
    return 0 if @orders.empty?

    @orders.map(&:amount).min
  end

  def maximum_order
    return 0 if @orders.empty?
    @orders.map(&:amount).max
  end

  def average_order
    return 0 if @orders.empty?

    total_amount / @orders.length
  end
end

view = View.new
view.run
