def ftoc(fahrenheit) 
   celsius = (fahrenheit.to_f - 32) * (5.00/9.00).to_f
   celsius.to_f
end

def ctof(celsius)
    fahrenheit = celsius.to_f * 9.00/5.00 + 32
    fahrenheit.to_f
end

