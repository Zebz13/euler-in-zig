const std = @import("std");

pub fn main() void {
    // brute force
    //limits
    var a: u32 = 0;
    var b: u32 = 0;

    var c: u32 = 0;

    while (a < 1000) : (a += 1) {
        b = a + 1;
        while (b < 1000) : (b += 1) {
            c = b + 1;
            while (c < 1000) : (c += 1) {
                if (square(a) + square(b) == square(c) and a + b + c == 1000) {
                    std.debug.print("printing a,b,c ({},{},{})", .{ a, b, c });
                    std.debug.print("Product of these 3 {}", .{a * b * c});
                }
            }
        }
    }
}

fn square(num: u32) u32 {
    return num * num;
}
// printing a,b,c (200,375,425)Product of these 3 31875000
// real    0m0.651s
// user    0m0.642s
// sys     0m0.001s
