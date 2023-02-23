# # # # # # a = {"y" => 30, "x" => 19}
# # # # # # b = {"h"=>2323, "y" =>8989}

# # # # # # # p b.select{"h"}
# # # # # # # p a.shift
# # # # # # p a.size
# # # # # # p a.sort
# # # # # # p a.store("x",20)
# # # # # # # a.each {|key, value| 
# # # # # # # puts "the value is #{key} is #{value}"} 
# # # # # # # a["x"]=20
# # # # # # # a["z"]=40
# # # # # # # p a.clear
# # # # # # # p a.default(2)
# # # # # # # a = { "x" => 34, "y" => 60 }
 
# # # # # # # Using the each_key method
# # # # # # # a.each_value {|value| puts value}
# # # # # # # # p a.Indexes(34)
# # # # # # # # puts "Maths and science".index('s')
# # # # # # # # puts "Good morning".index('rni')

# # # # # # # puts a.member?("x")
# # # # # # # puts a.merge!(b)

# # # # # # # puts a.rehash


# # # # # # # a = [18, 22, 33, 3, 5, 6]
  
# # # # # # # # declaring array
# # # # # # # b = [1, 4, 1, 1, 88, 9]
  
# # # # # # # # declaring array
# # # # # # # c = [18, 22, 3, 3, 50, 6]
  
# # # # # # # reject
# # # # # # # puts "reject method : #{a.reject {|num| num > 10 }}\n\n"
  
# # # # # # # # reject
# # # # # # # puts "reject method : #{b.reject! {|x| x.odd? }}\n\n"

# # # # # # a = {"x" => 34, "y" => 60, "z"=>33}
 
# # # # # # # Using values_at method
# # # # # # p a.values
 
# # # # # # # Using default method
# # # # # # a.default = "geeks"
 
# # # # # # # Using values_at method
# # # # # # p a.values_at("x", "y", "z", "g")

# # # # # # time1 = Time.new

# # # # # # puts time1.to_a

# # # # # # digits.each do |digit|
# # # # # #     puts "In loop #{digits}"



# # # # # (1..5).each do|i|
# # # # #     puts i
# # # # # end

# # # # # 5.times do|x|
# # # # #     puts x
# # # # # end
# # # # # 1.upto(5) do|x|
# # # # #     puts x
# # # # # end

# # # # # (10..50).step(10) do|x|
# # # # #     puts x
# # # # # end

# # # # hash = { a: 1, b: 2 }
# # # # puts hash.key(1)
# # # #     # => :a
# # # # # f = File.new("23.rb", "w")
# # # # #     # ... process the file
# # # # # # aFile.close

# # # # # File.open("22.rb", "r") do 

# # # # # File.open("about","r") do|f|
# # # # #     f.puts "This is file"
# # # # #     f.read "You are Reading"
# # # # #     f<<"visit"
# # # # # end

# # # # # while line =gets
# # # # #     puts line
# # # # # end
# # # # # aFile = File.new("input.txt", "r+")
# # # # # if aFile
# # # # #    aFile.syswrite("ABCDEF")
# # # # # else
# # # # #    puts "Unable to open file!"
# # # # # end

# # # # def promptAndGet(prompt)
# # # #     print prompt
# # # #     res = readline.chomp
# # # #     throw :quitRequested if res == "!"
# # # #     return res
# # # #  end
 
# # # #  catch :quitRequested do
# # # #     name = promptAndGet("Name: ")
# # # #     age = promptAndGet("Age: ")
# # # #     sex = promptAndGet("Sex: ")
# # # #     # ..
# # # #     # process information
# # # #  end
# # # #  promptAndGet("Name:")



# # # #  count  = 1


# # # # while count<=5
# # # #            puts("Hello, World")
# # # #            count+=1
# # # # end
# # # # puts("end the loop")


# # # # count  = 1
# # # # until count>5
# # # #            puts("Hello, World")
# # # # end



# # # # count  = 1
# # # # Until count>5
# # # #            puts("Hello, World")
# # # #            count+=1
# # # # end
# # # # puts("End of Until")

# # # # $i = 0
# # # # $num = 5
# # # # begin
# # # #    puts("Inside the loop i = #$i" )
# # # #    $i +=1
# # # # end until $i > $num
# # # # class sample
# # # #     def function 
        

# # # $var =  1
# # # print "1 -- Value is set\n" if $var
# # # print "2 -- Value is set\n" unless $var

# # # $var = true
# # # print "3 -- Value is set\n" unless $var


# # # $i = 0
# # # $sum = 5
# # # begin 
# # #     puts ("inside loop i = #$i")
# # #     $i+=1
# # # end while $i<$sum

# # # for i in 0..5
# # #     if i > 2 then
# # #        puts "Value of local variable is #{i}"
# # #        redo
# # #     end
# # #  end
# # #  begin 
# # #     do_something
# # #  rescue
# # #     retry
 
    
# # #     BEGIN {
# # #       puts "Begin code"
# # #     }
# # # END{
# # #    puts "ENd the code"
# # # }
# # # puts "main code block"
# # # # BEGIN { 
# # #    # BEGIN block code 
# # #    puts "BEGIN code block"
# # # } 
# # #    # END block code 
# # #    puts "END code block"
# # # }
# # #    # MAIN block code 
# # # puts "MAIN code block"


# # # aFile =File.new("sample.txt","r")
# # # aFile.close

# # # File.new("sample", "r") do 
# # #    # ... process the file
# # # end


# # aFile = File.new("about.text", "r+")
# # if aFile
# #    aFile.syswrite("ABCDEF")
# # else
# #    puts "Unable to open file!"
# # end
# # str = "Hello Ruby!"
# # putc str

# # puts "Enter a value :"
# # val = gets
# # puts val

# # aFile = File.new("21.rb", "r")
# # if aFile
# #    content = aFile.sysread(20)
# #    puts content
# # else
# #    puts "Unable to open file!"
# # end

# # aFile = File.new("21.rb", "r+")
# # if aFile
# #    aFile.syswrite("ABCDEF")
# #    aFile.each_byte {|ch| putc ch; putc ?. }
# # else
# #    puts "Unable to open file!"
# # end

# # arr = IO.readlines("21.rb")
# # puts arr[0]
# # puts arr[1]
# # puts arr[2]

# # IO.foreach("21.rb"){|block| puts block}

# # File.rename( "test.rb", "21.rb" )

# # file = File.new( "21.rb", "r" )
# # file.chmod( 0755 )

# # File.open("20.rb") 
# # if File::exists?( "20.rb" )

# # File.file?( "26.rb" )


# # a directory
# # File::directory?( "/usr/local/bin" ) # => true

# # a file
# File::directory?( "/Ruby/" ) # => true

# File::directory?( "20.rb" ) # => false

# File.readable?( "20.rb" )   # => true
# File.writable?( "20.rb" )   # => true
# File.executable?( "20.rb" ) # => false

# File.zero?( "test.txt" )      # => true
# File::ftype( "21.rb" )     # => file

# File::ctime( "21.rb" ) # => Fri May 09 10:06:37 -0700 2008


# puts Dir.pwd # This will return something like /usr/bin
# puts Dir.entries("/home/scpl/Ruby").join(' ')

# Dir.foreach("/home/scpl/Ruby") do |entry|
#    puts entry
# end

# Dir["/home/scpl/Ruby/*"]

# Dir.delete("mynewdir")

# Dir.mkdir( "mynewdir", 755 )

# require 'tmpdir'
#    tempfilename = File.join(Dir.tmpdir, "tingtong")
#    tempfile = File.new(tempfilename, "w")
#    tempfile.puts "This is a temporary file"
#    tempfile.close
#    File.delete(tempfilename)


# require 'tempfile'
#    f = Tempfile.new('tingtong')
#    f.puts "Hello"
#    puts f.path
#    f.close


# myStr = String.new("THIS IS TEST")
# foo = myStr.downcase

# puts "#{foo}"

# nums = Array.new(10) { |e| e = e * 2 }
# puts "#{nums}"

# color = {   
#     "Rose" => "red",   
#     "Lily" => "purple",   
#     "Marigold" => "yellow",   
#     "Jasmine" => "white"   
#   }   
#   color['Tulip'] = "pink"   
#   color.each do |l, v|   
#   puts "#{l} color is #{v}"   
#  end  


   
   