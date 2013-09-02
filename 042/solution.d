import std.stdio;

static uint triangles[] = [  1,   3,   6,  10,  15,
                            21,  28,  36,  45,  55,
                            66,  78,  91, 105, 120,
                           136, 153, 171, 190, 210];

bool isTriangle(uint n) {
  foreach(i; triangles)
    if (n == i) return true;
  return false;
}

void main() {
  uint wordVal;
  uint wordCount = 0;

  foreach (word; stdin.byLine()) {
    wordVal = 0;

    foreach (char c; word)
      wordVal += cast(uint)c - 64;
    
    if (isTriangle(wordVal)) {
      wordCount++;
      writeln(word);
    }
  }

  writeln(wordCount, " triangle words found");
}
