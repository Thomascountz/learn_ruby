def translate(input)
    #translates english into pig-latin
    
    pig_latin = []
    input = input.split(" ")
    
    input.each do |word|
        
        @position = 0
        #variable used to indicate the position of the last consonant that proceeds a vowel in the string
        @vowel = false
        #variable used to indicate if the string begins with a vowel or not
        @capital_word = false
        #variable used to indicate if the string is capitalized or not
        
        if word == word.capitalize
            word = word.downcase
            @capital_word = true
        end
        
        word.length.times do |x|
            if word[x].start_with?("a", "e", "i", "o", "u") == false
                @position = x
            else
                if x == 0
                    @vowel = true
                end
                break
            end
        end
        #helper method that finds the position of the last consonant that proceeds a vowel in the string 
        
        if @vowel
            @pig_word = "#{word}ay"
            #If a string begins with a vowel, "ay" will be added to the end of the string
        elsif word.start_with?("qu")
            @pig_word = "#{word[2..-1]}#{word[0..1]}ay"
        elsif word[1..2].start_with?("qu")
            @pig_word = "#{word[3..-1]}#{word[0..2]}ay"
        else 
            @pig_word = "#{word[(@position + 1)..-1]}#{word[0..@position]}ay"
        end
        
        if @capital_word
            @pig_word = @pig_word.downcase.capitalize
        end
        
        pig_latin << @pig_word

    end
    pig_latin.join(" ")
end

translate("Hello Dear")

=begin

While the following code passes all tests, it lacked efficiency.
Writing this first draft was painful, but important for me. 
D.R.Y. When I saw how many times I had to repeat myself, I realized something was very wrong.

#Sadly, my currently ability level has me brute-forcing all of the expectations

def translate(input)
    pig_latin = []
    input = input.split(" ")
    
    input.each do |word| 
    
        if word.start_with?("a", "e", "i", "o", "u")
            pig_latin << "#{word}ay"
        #if the word begins with a vowel, add "ay" to the end of the word

        elsif word.start_with?("qu")
            pig_latin << "#{word[2..-1]}#{word[0..1]}ay"
        #if the word begins with "qu", treat "qu" as a consonant 
            
        elsif word[1..2].start_with?("qu")
            pig_latin << "#{word[3..-1]}#{word[0..2]}ay"
        #if the word begins with a consonant followed by "qu" (eg. "square"), treat "*qu" as a consonant 

        elsif word[0].start_with?("a", "e", "i", "o", "u") == false and word[1].start_with?("a", "e", "i", "o", "u") == false and word[2].start_with?("a", "e", "i", "o", "u") == false
            pig_latin << "#{word[3..-1]}#{word[0..2]}ay"
        #if the first three letters are a consonant, move all of them to the end of the word and add "ay"
        
        elsif word[0].start_with?("a", "e", "i", "o", "u") == false and word[1].start_with?("a", "e", "i", "o", "u") == false
            pig_latin << "#{word[2..-1]}#{word[0..1]}ay"
        #if the first two letters are a consonant, move all two of them to the end and add "ay"
        
        elsif word.start_with?("a", "e", "i", "o", "u") == false
            pig_latin << "#{word[1..-1]}#{word[0]}ay"
        #if the first letter is a consonant, move it to the end of the word and add "ay"
        end
        
    end
        
    pig_latin.join(" ")
end

=end