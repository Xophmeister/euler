import std.stdio;

ulong triangle(ulong n) {
  return n * (n + 1) / 2;
}

uint d(ulong n) {
  uint count = 0;

  for (uint i = 1; i <= n/i; i++)
    if (!(n%i))
      if (i == n/i) count++;
      else          count += 2;

  return count;
}

void main() {
  ulong n = 1;

  while (d(triangle(n)) < 500) {
    if (!(n%1000)) writeln("Searched up to ", n, "...");
    n++;
  }

  writeln("\ntriangle(", n, ") = ", triangle(n), " has ", d(triangle(n)), " divisors");
}
