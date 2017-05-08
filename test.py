x = ["Boom" if i % 2 == 0 else 'Bam' for i in range(10)]
print x

y = [i for i in range(100) if i % 3 ==0 and i % 7 == 0]
print y