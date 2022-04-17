def counter
    # grab file - hard coded to start with
    book = File.read("moby-dick.txt")

    # strip out case
    text = book.downcase

    # splitting up into individual words
    words = text.split  

    # creating a new Hash which will store the resulting count
    frequency = Hash.new(0)
    
    # words.each { |word| frequency[word] +=1 }

    # replaceing the single word count from above with counting three word phrases
    while words.size >= 3
        frequency["#{words[0]} #{words[1]} #{words[2]}"] += 1
        words.shift(1)
      end
    
    #outputting count results as a code check
    puts frequency
end

counter


