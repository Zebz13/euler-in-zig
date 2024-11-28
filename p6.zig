const std = @import("std");
pub fn main() void {
    var sum_of_squares: u28 = 0;
    var counter: u14 = 0;
    while (counter < 101) : (counter += 1) {
        sum_of_squares += counter * counter;
    }
    const square_of_sums: u28 = sum_upto() * sum_upto();
    const diff: i128 = sum_of_squares - square_of_sums;
    // var diff: i128 = 0;
    // diff += sum_of_squares;
    // diff -= square_of_sums;
    //shenanigans
    std.debug.print("Diff between sum_of_squares minus square_of_sum = {}\n", .{diff});
}

fn sum_upto() u25 {
    var sum: u14 = 0;
    var counter: u7 = 0;
    while (counter < 101) : (counter += 1) {
        sum += counter;
    }
    return sum;
}
