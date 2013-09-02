//  Find all abundant numbers <= 28123
//  Generate all combinations of adding two abundant numbers <= 28123

import std.stdio, std.algorithm;

bool abundant(ulong n) {
  ulong[] divisors(ulong n) {
    ulong[] r;

    for (ulong i = 1; i <= n/i; i++)
      if (!(n%i))
        if (i == n/i)   r ~= i;
        else          { r ~= i;
                        r ~= n/i; }

    return r;
  }

  return reduce!("a+b")(divisors(n)) > 2*n;
}

void main() {
  for (ulong i = 1; i <= 28123; i++)
    if (abundant(i)) writeln(i);
}
