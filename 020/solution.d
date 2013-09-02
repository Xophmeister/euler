import std.stdio, std.bigint, std.conv;

void main() {
  BigInt a = 100;
  int sum = 0;

  for (auto i = 99; i > 1; i--)
    a *= i;

  foreach(char c; to!string(a))
    sum += c - 48;

  writeln(sum);
}
