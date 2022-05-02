# Solution 1
import std/math

var a = 600851475143
var max = 0

if (a mod 2) == 0:
    a = a div 2
    max = 2
    while (a mod 2) == 0:
        a = a div 2

var divisor = 3

while a > 1 and float(divisor) <= sqrt(600851475143.0):
    if (a mod divisor) == 0:
        a = a div divisor
        max = divisor
        while (a mod divisor) == 0:
            a = a div divisor
    divisor += 2

echo max