const std = @import("std");

pub fn main() void {
    var first: u32 = 1;
    var second: u32 = 2;
    var third: u32 = first + second;
    var sum: u64 = 2;
    while (third < 4000000) : ({
        first = second;
        second = third;
        third = first + second;
        // second = third;
    }) {
        if (third % 2 == 0) {
            sum += third;
            std.debug.print("({},{},{}) ", .{ first, second, third });
        }
    }
    std.debug.print("\n", .{});
    std.debug.print("Sum of even fib numbers under 4M {}", .{sum});
}
