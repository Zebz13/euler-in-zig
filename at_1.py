a,b,c = map(int,input().split(" "))
class_counter=0
for i in range(a):
    temp = int(input())
    if(temp>=c or temp<b):
        class_counter+=1

print(class_counter)

