const std = @import("std");

pub fn main() void {
    const limit: u11 = 1000;
    var counter: u11 = 3;
    var sum: u32 = 0;
    while (counter < limit) : (counter += 1) {
        if ((counter % 3 == 0) or (counter % 5 == 0)) {
            std.debug.print("{} ", .{counter});
            sum += counter;
        }
    }
    std.debug.print("\n", .{});

    std.debug.print("Sum value={}\n", .{sum});
}
