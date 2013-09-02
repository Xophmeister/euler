import std.stdio, std.bigint, std.conv;

void main() {
  BigInt a[2];
  ulong i = 3;

  a[0] = 1;
  a[1] = 1;

  while ((to!string(a[1])).length < 1000) {
    a = [a[1], a[0] + a[1]];
    i++;
  }

  writeln(--i, " has ", (to!string(a[1])).length, " digits");
}
