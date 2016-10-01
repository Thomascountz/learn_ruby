class Book
    
    def title= (title)
        
        lowcase = ["a", "an", "the", "at", "by", "for", "in", "of", "on", "to", "up", "and", "as", "but", "or", "nor", "over"]
        #list of little words that should not be capitalized 
    
        title = title.split(" ").map do |word|
            word.capitalize
        end
        title = title.join(" ")
        #capitalizes every word in the string
        
        
        lowcase.each do |little_word|
            if title.include?(" #{little_word.capitalize} ")
                title = title.gsub(" #{little_word.capitalize} ", " #{little_word} ")
            end
        end
        #if a little_word is included in the now capitalized string, it is gsub'd for lowercase 
        
        title[0] = title[0].capitalize
        #the first word is capitalized 
        
        @title = title
        
    end
        
    def title
        @title
    end
    
end
