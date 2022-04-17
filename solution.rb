def counter
    # grab file - hard coded to start with
    book = File.read("moby-dick.txt")

    # strip out case and punctuation except for apostrophe
    text = book.downcase.gsub(/[^a-z0-9\s^']/i, '')  

    # splitting up into individual words
    words = text.split  

    # creating a new Hash which will store the resulting count
    frequency = Hash.new(0)
    
    # words.each { |word| frequency[word] +=1 }

    # replacing the single word count from above with code to create three word phrases
    while words.size >= 3
        frequency["#{words[0]} #{words[1]} #{words[2]}"] += 1
        words.shift(1)
      end

    # creating the list of counts
    frequencyList = frequency.each { |phrase|
      if frequency.has_key?(phrase)
        frequency[phrase] = frequency[phrase] + 1
      end
    }

    # I am spitting out entire list here and also reversing the sort - still deal with limiting the results
    sortedList = frequencyList.sort{|a,b| b[1]<=>a[1]}.each { |elem|
    puts "#{elem[1]} occurrences of \"#{elem[0]}\""}
end

counter


