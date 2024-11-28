const std = @import("std");

//worst case
//decrement 1 after the other
// reduce 1, reduce

// reversal for int = 981
// 981 = 9 *100+8*10+1
// 1*100+8*10+9*1

pub fn main() void {
    var first: u32 = 999;
    var second: u32 = 999;
    var largest: u32 = 0;
    var value: u32 = 0;
    while (first > 1) : (first -= 1) {
        second = 999;
        while (second > 1) : (second -= 1) {
            value = first * second;
            if ((value == reverse(value)) and (value > largest)) {
                largest = value;
            }
        }
    }
    std.debug.print("{}", .{largest});
}

fn reverse(number: u32) u32 {
    var reversed_num: u32 = 0;
    var array = [_]u32{0} ** 10;
    var counter: usize = 0;
    var num: u32 = number;
    while (num > 0) : (counter += 1) {
        array[counter] = num % 10;
        num = num / 10;
    }
    var rev_counter: u5 = 0;
    while (counter > 0) : ({
        counter -= 1;
        rev_counter += 1;
    }) {
        reversed_num += build_in_reverse(array[rev_counter], counter);
    }
    return reversed_num;
}

fn build_in_reverse(num: u32, ten_power: usize) u32 {
    var power: u32 = 1;
    var ten_power_temp: usize = ten_power;

    while (ten_power_temp > 1) : (ten_power_temp -= 1) {
        power *= 10;
    }
    return num * power;
}
