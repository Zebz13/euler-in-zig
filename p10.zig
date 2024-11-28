const print = @import("std").debug.print;

pub fn main() void {
    var prime_array = [_]u22{0} ** 400000;
    var counter: u22 = 0;
    const limit: u22 = 2000000;
    var value: u22 = 2;
    // limit -= 1;
    while (limit > value) : (value += 1) {
        if (check_prime(value, &prime_array, counter)) {
            prime_array[counter] = value;
            counter += 1;
        }
    }
    // print("{any}", .{prime_array[0..counter]});
    var sum: u50 = 0;
    for (prime_array[0..counter]) |prime| {
        sum += prime;
    }
    print("Sum of primes upto {} is {}", .{ value, sum });
}

fn check_prime(number: u43, prime_array: [*]u22, values: u22) bool {
    for (prime_array[0..values]) |prime| {
        if (number % prime == 0)
            return false;
    }
    return true;
}

// time ./p10
// Sum of primes upto 2000000 is 142913828922
// real    0m55.876s
// user    0m55.494s
// sys     0m0.026s
