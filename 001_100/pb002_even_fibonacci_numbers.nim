# Solution 1
var
    a = 1
    b = 2
    sum = 0

while b < 4_000_000:
    if b mod 2 == 0:
        sum = sum + b
    (a, b) = (b , a+b)

echo sum