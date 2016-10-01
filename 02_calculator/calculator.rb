def add(num_1, num_2)
    num_1 + num_2
end

def subtract(num_1, num_2)
    num_1 - num_2
end

def sum(array)
    (array.reduce :+).to_i
end

def multiply(*args)
    (args.reduce :*).to_i
end

def power(num_1, num_2)
    num_1**num_2
end

def factorial(num)
    sum = num
    num = num - 1
    while num > 0 do
        sum = sum * num
        num = num - 1
    end
    sum
end
