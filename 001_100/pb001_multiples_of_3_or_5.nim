# Solution 1
var sum = 0
for i in 1..<1000:
    if i mod 3 == 0 or i mod 5 == 0:
        sum += i
echo sum


# Solution 2
proc sum_divisors_below_n(n, divisor: int): int =
    var p = (n-1) div divisor
    divisor * (p * (p+1)) div 2

echo sum_divisors_below_n(1000, 3) + sum_divisors_below_n(1000, 5) - sum_divisors_below_n(1000, 15)