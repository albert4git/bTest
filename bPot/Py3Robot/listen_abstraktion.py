n = 30

pairs = [(x, y) for x in range(1,n+1) for y in range(1,n+1) 
             if not x % y and x != y ]

print(pairs)
