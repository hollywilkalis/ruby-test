def counter
    # replacing hard coded file input with input from command line
    # I can only handle one file for now so I'm putting in a hacky console error until I can refine
    incomingFile = ARGV[0]

    if ARGV.length != 1
      puts "Sorry, at this time I can only accept one file at a time"
      exit;
    end

    # Reading the file as specified
    book = File.read(incomingFile)  

    # strip out case and punctuation except for apostrophe
    text = book.downcase.gsub(/[^a-z0-9\s^']/i, '')  

    # splitting up into individual words
    words = text.split  

    # creating a new Hash which will store the resulting count
    frequency = Hash.new(0)
    
    # creating three word phrases
    while words.size >= 3
        frequency["#{words[0]} #{words[1]} #{words[2]}"] += 1
        words.shift(1)
      end

    # creating the hash containing the phrases and counts
    frequencyList = frequency.each { |phrase|
      if frequency.has_key?(phrase)
        frequency[phrase] = frequency[phrase] + 1
      end
    }

    # taking the list and spititng out the first 100 entries to the console
    # value is hard coded now could be changed to a variable that's based on user input 
    sortedList = frequencyList.sort{|a,b| b[1]<=>a[1]}.each_with_index { |elem, index|
      puts "#{elem[1]} occurrences of \"#{elem[0]}\""
      break if index >= 100
    }

end

counter


