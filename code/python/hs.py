def hs(n):
    times = 1
    l1 = []
    loops = 0
    while (n >= 1 and times > 0):
        if (n != 1):
            if (n % 2 == 0):
               l1.append( n)
               n = n // 2
               loops = loops + 1
            else:
               l1.append( n)
               n = 3 * n + 1
               loops = loops + 1
        else:
            l1.append( n)
            loops = loops + 1
            print(l1, loops, None)
            times = (times - 1)
           
               
               
