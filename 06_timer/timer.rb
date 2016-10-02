class Timer

  def seconds
      @seconds = 0
  end
  
  def seconds= seconds
      @seconds = seconds
  end
  
  def time_string
     while @seconds.to_i > 60
         @minutes = @minutes.to_i + 1
         @seconds = @seconds - 60
     end
     
     while @minutes.to_i > 60
         @hours = @hours.to_i + 1
         @minutes = @minutes - 60
     end     
     
      @seconds = padded(@seconds)
      @minutes = padded(@minutes)
      @hours = padded(@hours)
      
      return "#{@hours}:#{@minutes}:#{@seconds}"
  end
  
#private
  
  def padded(number)
      #helper fuction to add a "0" before or after a single digit in the time_string
    if number.to_i == 0
        return "00"
    elsif
        number.to_i < 10
        return "0#{number}"
    else 
        return "#{number}"
    end
          
  end
  
end
