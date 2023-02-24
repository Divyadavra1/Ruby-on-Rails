class Order
    def initialize
        # @order = []
    end
    def run
        @order = {
            @year => {
                @month => {
                    @date => [@amount]
                }
            }
        }
# puts @order['year']['month']['date']
        # @order["2022"]["12"]["10"]
        # 12-12-2022
loop do
@amount = gets.chomp
@year = @order[0]
@month = @order[1]
@date = @order[2]
@d = gets.chomp.split("-")

if @order["year"].nil?
    @order["year"] = {}
end
if @order["year"]["month"].nil?
    @order["year"]["month"] = {}
end
if @order["year"]["month"]["date"].nil?
    @order["year"]["month"]["date"] = []
end
@order["year"]["month"]["date"] << @amount
# @amount.sum()
end
end
end
view = Order.new
view.run

