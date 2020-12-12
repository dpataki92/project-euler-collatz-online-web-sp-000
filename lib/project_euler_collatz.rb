def even_next(n)
    n / 2
end

def odd_next(n)
    3 * n + 1
end

def next_value(n)
    n % 2 === 0 ? even_next(n) : odd_next(n)
end

def collatz(n)
    results = [n]

    until n === 1 do 
        n = next_value(n)
        results << n
    end

    results
end

def longest_collatz
    longest = []
    counter = 1000000

    until counter === 1 do
        currentCollatz = collatz(counter)
        longest = currentCollatz if currentCollatz.size > longest.size
        counter -= 1
    end

    longest[0]
end