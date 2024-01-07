const std = @import("std");

\\ Project: LL(1) SQL Parser
\\ Author: Anthony Aleman
\\ 
\\ Description: This is a simple LL(1) SQL Parser written in Zig. 
\\            This tool will be used to query simple CSV files.
\\            This is a work in progress and is not yet complete.
\\
\\  Current SQL subset supported:
\\    - SELECT
\\    - WHERE
\\    - Table names as the csv file names (FROM)
\\    - Column names without aliases
\\   
\\ Example Query: SELECT column1, column2 FROM table1 WHERE column1 = 'value';

pub fn main() !void {
    // Prints to stderr (it's a shortcut based on `std.io.getStdErr()`)
    std.debug.print("All your {s} are belong to us.\n", .{"codebase"});

    // stdout is for the actual output of your application, for example if you
    // are implementing gzip, then only the compressed bytes should be sent to
    // stdout, not any debugging messages.
    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();

    try stdout.print("Run `zig build test` to run the tests.\n", .{});

    try bw.flush(); // don't forget to flush!
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
