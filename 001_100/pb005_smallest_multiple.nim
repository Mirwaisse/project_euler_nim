# Solution 1
echo 2 * 3 * 2 * 5 * 7 * 2 * 3 * 11 * 13 * 2 * 17 * 19

# Solution 2
var found = false
var result = 20

while found == false:
    found = true
    for i in 2..20:
        if (result mod i) != 0:
            found = false
            result += 20
            break

echo result

# Solution 3
from std/math import lcm
from std/sequtils import toSeq

echo lcm(toSeq(2..20))