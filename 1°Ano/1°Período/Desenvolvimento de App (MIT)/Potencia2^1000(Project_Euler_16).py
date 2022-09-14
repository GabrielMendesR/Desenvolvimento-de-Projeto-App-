total = 0
n = 2 ** 1000
while n > 0:
    total += n % 10
    n = int(n / 10)
print(total)

# OU

total2 = sum(map(int, str(2**1000)))
print(total2)
