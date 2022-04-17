def counter
    # grab file - hard coded to start with
    book = File.read("moby-dick.txt")

    # strip out case
    text = book.downcase

    # splitting up into individual words
    words = text.split  

    # creating a new Hash which will store the resulting count
    frequency = Hash.new(0)
    
    words.each { |word| frequency[word] +=1 }
    puts frequency
end

counter


