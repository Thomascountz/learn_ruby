def echo(input)
    #returns input as a string
    input
end

def shout(input)
    #returns input string in CAPSLOCK
    input.upcase
end

def repeat(input, times=2)
    #returns input as a string multiplied by times, or else twice
    ((input + " ") * times).strip
end

def start_of_word(input, chars=0)
    #returns the first section of input from position 0 to position chars or else just the first char
    input[0..chars-1]
end

def first_word(input)
    #returns the first characters in a string until a whitespace is found
    (input.split(" "))[0]
end

def titleize(input)
    #returns an input with the first word capitalize and all other words capitalized except for lowcase words
    #i.e. titlecase gem
    
    lowcase = ["a", "an", "the", "at", "by", "for", "in", "of", "on", "to", "up", "and", "as", "but", "or", "nor", "over"]
    #list of little words that should not be capitalized 

    title = input.split(" ").map do |word|
        word.capitalize
    end
    title = title.join(" ")
    #capitalizes every word in the string
    
    
    lowcase.each do |little_word|
        if title.include?(" #{little_word.capitalize} ")
            title = title.gsub(little_word.capitalize, little_word)
        end
    end
    #if a little_word is included in the now capitalized string, it is gsub'd for lowercase 
    
    title[0] = title[0].capitalize
    #the first word is capitalized 
    
    title
end

