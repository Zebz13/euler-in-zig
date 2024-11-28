// Time taken: 438ns
// 232792560
// real    0m0.014s
// user    0m0.008s
// sys     0m0.012s

const std = @import("std");
const gcd = std.math.gcd;
const print = @import("std").debug.print;

// Least common multiple
fn lcm(a: usize, b: usize) usize {
    return a * b / gcd(a, b);
}

pub fn main() !void {
    var i: usize = 2;
    var ret: usize = 1;

    var timer = try std.time.Timer.start();

    while (i <= 20) : (i += 1)
        ret = lcm(i, ret);

    print("Time taken: {s}\n", .{std.fmt.fmtDuration(timer.read())});

    print("{d}\n", .{ret});
    print("{d}\n", .{lcm(4, 8)});
}
