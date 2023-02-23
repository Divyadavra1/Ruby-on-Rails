
# def restaurant_a(width,height)
#         l = gets.chomp.to_i
#         x = gets.chomp.to_i
#         for i in 1..x do
#             width, height = gets.chomp.split(" ").map(&:to_i)

#      meal = ""
#         if (width || height) < l
#          meal = "image not valid"
#         elsif width & height > l and width == height
#          meal = "Perfect"
#         elsif width & height > l and width != height
#          meal = "Crop and accept"
#         else
#         meal = "image not available"
#         end
#     end
#  end
 
#  puts restaurant_a(100,200)   #=>   "Ribeye"
#  puts restaurant_a(500,500)   #=>   "Soup"
#  puts restaurant_a(300,400)   #=>   "Soup"
puts "Enter upper limit"
ul=gets.chomp.to_i
puts "Enter Lower limit"
ll=gets.chomp.to_i

for i in ll..ul do
     for i in 0..3 do
     		puts "Inner loop triggered"
     	end
     	puts "Outer loop triggered"
end