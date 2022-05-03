# Solution 1
proc reverse(n: int): int =
    var reversed = 0
    var n = n
    while n > 0:
        reversed = reversed*10 + (n mod 10)
        n = n div 10
    return reversed

var max = 0

for i in countdown(999, 100):
    for j in countdown(i, 100):
        var prod = i*j
        if prod < max:
            break
        if prod == reverse(prod):
            if prod > max:
                max = prod

echo max