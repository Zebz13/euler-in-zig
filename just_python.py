def check_prime(number,list_of_primes):
    for i in list_of_primes:
        if(number%i==0):
            return 0
    return 1

a=2000000
list_of_primes=[]
init=2
while(a>=init):
    if(check_prime(init,list_of_primes)):
        list_of_primes.append(init)


    init+=1
print(f"sum of {a} primes is {sum(list_of_primes)}")

# zeb@fedora:~/zig/euler_problems$ time python just_python.py 
#         sum of 2000000 primes is 142913828922

# real    4m47.524s
# user    4m45.074s
# sys     0m0.165s

# 4*60+47=287
# 287/56=pprox(5x)