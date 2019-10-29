dy="x*y";
dy=inline(dy);
x0 = 0;
xn = 2;
y = 1;    
h = 0.01; #must be small 

printf ('x  \t\t y  \n') % data table header
printf ('%f \t %f\t \n',x0,y);

for x = x0 : h : xn-h
   x = x + h;
   y = y + dy(x,y)*h;
 
  fprintf ('%f \t %f\n',x,y);
  
end