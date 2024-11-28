const std = @import("std");

pub fn main() void {
    var number: u43 = 600851475143;
    var largest_prime_divisor: u16 = 3; //odd number
    // var largest_prime_divisor: u43 = 73;
    var text_to_array = [_]u16{0} ** 16;
    var flag: bool = true;
    var count: u8 = 0;
    std.debug.print("{} ", .{largest_prime_divisor});
    while (true) : ({
        largest_prime_divisor += 2;
    }) {
        if (number % largest_prime_divisor == 0) {
            flag = check_prime(largest_prime_divisor);
            std.debug.print("{} ", .{largest_prime_divisor});
            if (flag) {
                text_to_array[count] = largest_prime_divisor;
                count += 1;
                number /= largest_prime_divisor;
            }
            if ((largest_prime_divisor * 2) >= number) break;
        }
        // std.debug.print("{}\n", .{largest_prime_divisor});
    }
    std.debug.print("Largest prime divisor of 600851475143 is {any}\n", .{text_to_array});
}

fn check_prime(number: u43) bool {
    var counter: u43 = number / 2;
    while (counter > 2) : (counter -= 1) {
        if (number % counter == 0)
            return false;
    }
    return true;
}
