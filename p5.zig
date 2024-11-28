const std = @import("std");

// coding worst case scenario since dunno any optimizations
//python
// real    0m49.492s
// user    0m12.685s
// sys     0m35.963s

//zig without compile - direct run
// real    0m1.628s
// user    0m1.431s
// sys     0m0.174s

//with compile
// real    0m0.126s
// user    0m0.125s
// sys     0m0.000s

//

pub fn main() void {
    var flag: bool = false;
    var smallest_multiple: u62 = 20;
    while (true) : ({
        smallest_multiple += 20;
    }) {
        flag = divisible(smallest_multiple);
        if (flag) {
            break;
        }
    }
    std.debug.print("Smallest multiple of numbers from 1 to 20 {}", .{smallest_multiple});
}

fn divisible(smallest_multiple: u62) bool {
    var counter: u5 = 1;

    while (counter < 20) : (counter += 1) {
        if (!(smallest_multiple % counter == 0)) {
            return false;
        }
    }
    return true;
}
