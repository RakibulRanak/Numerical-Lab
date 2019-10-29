a = [4,1,2,-1;3,6,-1,2;2,-1,5,-3;4,1,-3,-8];
b = [2;-1;3;2];
n = length(b);
x = zeros(n,1);
iterlimit = 100;
tol = 0.0000001;

for iteration = 1 : iterlimit
  convergence = true;
  for i = 1 : n  % loop of equations
    Sum = 0;
    for j = 1 : n %loop of summation
      if j ~= i
        Sum = Sum + a(i,j)*x(j);
      end
    end
    temp=x(i);
    x(i) = -1/a(i,i) * (Sum - b(i));
    if abs(temp - x(i)) > tol
      convergence = false;
    end
  end
  if convergence
    break
  end
end
iteration
disp('solution')
xnew
#https://youtu.be/0NvoPApzV90?t=165