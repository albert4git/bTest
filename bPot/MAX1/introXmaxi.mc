
diff(cos(x),x);

integrate(1/(1+x^3),x);

integrate(1/(1+x^2),x,0,1);

plot2d(sin(x),[x,0,2*%pi]);

kill(all);


plot3d(x^2-y^2,[x,-2,2],[y,-2,2],[grid,12,12]);

limit((2*x+1)/(3*x+2),x,inf);

limit(sin(3*x)/x,x,0);

block([fpprec:100],bfloat(%pi));

block([fpprec:100],sin(bfloat(%pi)));

solve([x+y+z = 5,3*x-5*y = 10,y+2*z = 3],[x,y,z]);

solve(x^2-5*x+6 = 0,x);

A:matrix([1,2],[3,4]);
B:matrix([1,1],[1,1]);
A+B;
A . B;
A^^(-1);
determinant(matrix([a,b],[c,d]));

Fib[0]:0;
Fib[1]:1;
Fib[n]:=Fib[n-1]+Fib[n-2];
Fib[8];

ode2('diff(y,x,1)+3*x*y = sin(x)/x,y,x);

ode2('diff(y,x,1)-y = 1,y,x);

ode2('diff(y,x,2)-y = 1,y,x);

f(x):=x+2;
f(3);
v3:7;
block([v3],v3);
g(x):=block([u:x+3,w],u:u^2,w:(y+2)^2,u+w);
h(x):=block([u:x+3,w],u:u^2,if u < 3 then w:(y+2)^2 else w:(y+2)^2+1,u+w);
block([w:0],for i thru 10 do w:w+i^2);
block([w:0],for i thru 10 do w:w+i^2,w);

describe("log");

all;
