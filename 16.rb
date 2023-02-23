for i in 0..5
    if i < 2 then
        next
    end
    puts "value of local var #{i}"
    redo
end

