const print = @import("std").debug.print;

pub fn main() void {
    var power: u16 = 1000;
    var output: u1024 = 1;
    while (power >= 1) : (power -= 1) {
        output *= 2;
    }
    const array: []u1024 = num_to_array(output);

    print("Sum of elements= {}", .{sum_of_array(array)});
}

//expecting 1000 digits

fn num_to_array(num: u1024) []u1024 {
    var output_array = [_]u1024{0} ** 1000;
    var temp_num: u1024 = num;
    var counter: u12 = 0;
    while (temp_num >= 1) : ({
        temp_num = temp_num / 10;
        counter += 1;
    }) {
        output_array[counter] = temp_num % 10;
    }
    return output_array[0..counter];
}

fn sum_of_array(array: []u1024) u1024 {
    var sum: u1024 = 0;
    for (array) |elements| {
        sum += elements;
    }
    return sum;
}
