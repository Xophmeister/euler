import std.stdio, std.math;

bool perfectSquare(ulong n) {
  real x = cast(real)n;
  real i;
  if (modf(sqrt(x),i) == 0) return true;
  else                      return false;
}

void main() {
  ulong x, y, z;
  ulong max = 10000;

  for (z = 1; z <= max; z++)
    for (y = z + 1; y <= max; y++)
      for (x = y + 1; x <= max; x++ )
        if (perfectSquare(x + y) &&
            perfectSquare(x - y) &&
            perfectSquare(x + z) &&
            perfectSquare(x - z) &&
            perfectSquare(y + z) &&
            perfectSquare(y - z))
          writeln(x + y + z);
}
