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

    # replacing the single word count from above with counting three word phrases
    while words.size >= 3
        frequency["#{words[0]} #{words[1]} #{words[2]}"] += 1
        words.shift(1)
      end
    
    # outputting count results as a code check
    # puts frequency

    #now take results and sort by the count
    frequencyList = frequency.each { |phrase|
      if frequency.has_key?(phrase)
        frequency[phrase] = frequency[phrase] + 1
      end
    }

    #I am spitting out entire list here - will deal with limiting later
    frequencyList.sort{|a,b| a[1]<=>b[1]}.each { |elem|
    puts "\"#{elem[0]}\" has #{elem[1]} occurrences"}

end

counter


