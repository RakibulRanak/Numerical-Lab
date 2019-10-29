function value=FalsePos(f,a,b);
f=inline(f);

while i <=10
    c = (a* f(b) - b * f(a))/(f(b) - f(a));
    printf("%d %d %d %d %d %d\n",a,b,f(a),f(b),c,f(c));
    %func(m)*func(a)
    if f(c)*f(a) < 0
        b = c;
    else
        a = c;
  endif
  i=i+1;
  
endwhile
value=c;
endfunction


