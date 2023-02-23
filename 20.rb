def met(&block)   
  puts "This is method"   
  block.call   
  puts "This is Method2"
  block.call
end   
met { puts "This is &block example" }  