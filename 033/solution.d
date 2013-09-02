import std.stdio;

real eval(int num, int den) {
  return cast(real)num / cast(real)den;
}

void main() {
  for(auto num = 10; num <= 99; num++)
    for(auto den = 10; den <= 99; den++)
      if (!(num == den || num%10 == 0 || den%10 == 0))
        if (((num/10 == den/10 && eval(num,den) == eval(num%10,den%10)) ||
             (num/10 == den%10 && eval(num,den) == eval(num%10,den/10)) ||
             (num%10 == den/10 && eval(num,den) == eval(num/10,den%10)) ||
             (num%10 == den%10 && eval(num,den) == eval(num/10,den/10))) &&
            eval(num,den) < 1)
          writeln(num,"/",den);
}
