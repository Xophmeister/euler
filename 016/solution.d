import std.stdio, std.bigint, std.conv;

void main() {
  BigInt a = 2;
  int sum = 0;

  a ^^= 1000;

  foreach(char c; to!string(a))
    sum += c - 48;

  writeln(sum);
}
