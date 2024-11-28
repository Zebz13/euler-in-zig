const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    var input: [5]u8 = undefined;
    const stdin = std.io.getStdIn().reader();
    var stream = std.io.fixedBufferStream(&input);

    try stdin.streamUntilDelimiter(stream.writer(), '\n', null);
    const data = stream.getWritten();

    // print("The user entered: {any}\n", .{data});
    // print("Full input array: {any}\n", .{input});

    var basic_input = std.mem.splitSequence(u8, data, " ");
    var first_line: [5]u32 = undefined;
    var count: u32 = 0;
    while (basic_input.next()) |i| {
        first_line[count] = try std.fmt.parseInt(u32, i, 10);
        count += 1;
        // print("The user entered: {any}\n", .{first_line[count]});
    }
    var large_array: [1000]u8 = undefined;
    var value: []u8 = undefined;
    stream = std.io.fixedBufferStream(&large_array);
    for (0..first_line[0]) |_| {
        try stdin.streamUntilDelimiter(stream.writer(), '\n', null);
        value = stream.getWritten();
        // print("The user entered: {any}\n", .{value});
    }

    print("The user entered: {any}\n", .{value});
}

pub fn read_input(input: []u8, number_of_inputs: i32) []u8 {
    input = undefined;
    const stdin = std.io.getStdIn().reader();
    var stream = std.io.fixedBufferStream(&input);
    const input_holder 
}
