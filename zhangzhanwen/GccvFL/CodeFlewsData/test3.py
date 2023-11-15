
import datetime
a = datetime.datetime.now()
for i in range(100000000):
    x = 1+1
print(datetime.datetime.now()-a)