%1
syms x n k;

%a
%a0=1/pi*int(x^2+x,x,-pi,pi)
%an=1/pi*int((x^2+x)*cos(n*x),-pi,pi)
%bn=1/pi*int((x^2+x)*sin(n*x),-pi,pi)

%b
%a0=1/pi*int(x^2+x,x,0,2*pi)
%an=1/pi*int((x^2+x)*cos(n*x),0,2*pi)
%bn=1/pi*int((x^2+x)*sin(n*x),0,2*pi)

%c
%a0=1/pi*(int(x,x,0,pi)+int(pi,x,pi,2*pi))
%an=1/pi*(int(x*cos(x*n),x,0,pi)+int(pi*cos(x*n),x,pi,2*pi))
%bn=1/pi*(int(x*sin(x*n),x,0,pi)+int(pi*sin(x*n),x,pi,2*pi))

%d
%a0 = 1/2*int((x-1)*(x-3),x,1,3)
%an = 1/2*int((x-1)*(x-3)*cos(n*x*(pi/2)),1,3)
%bn = 1/2*int((x-1)*(x-3)*sin(n*x*(pi/2)),1,3)


%2 % i

% a0=1/pi*(int(-k,x,-pi,0)+int(k,x,0,pi));
% an=1/pi*(int(-k*cos(n*x),x,-pi,0)+int(k*cos(n*x),x,0,pi));
% bn=1/pi*(int(-k*sin(n*x),x,-pi,0)+int(k*sin(n*x),x,0,pi));
% 
% exp=[a0/2,subs(an*cos(n*x)+bn*sin(n*x),n,[1 2 3 4])]

% ii
% f=exp(-x);
% a0=1/pi*(int(f,x,0,2*pi));
% an=1/pi*(int(f*cos(n*x),x,0,2*pi));
% bn=1/pi*(int(f*sin(n*x),x,0,2*pi));
% 
% exp=[a0/2,subs(an*cos(n*x)+bn*sin(n*x),n,[1 2 3 4])]

% iii

% a0=1/(pi*0.5)*(int(-4*x/pi,x,-(pi*0.5),0)+int(4*x/pi,x,0,(pi*0.5)));
% an=1/(pi*0.5)*(int(-4*x/pi*cos(n*x*2),x,-(pi*0.5),0)+int(4*x/pi*cos(n*x*2),x,0,(pi*0.5)));
% bn=1/(pi*0.5)*(int(-4*x/pi*sin(n*x*2),x,-(pi*0.5),0)+int(4*x/pi*sin(n*x*2),x,0,(pi*0.5)));
% % 
% exp=[a0/2,subs(an*cos(n*x*2)+bn*sin(n*x*2),n,[1 2 3 4])]

% 3
L=1;
a0=1/L*(int(pi*x,x,0,1)+int(pi*(2-x),1,2));
an=1/L*(int(pi*x*cos(n*pi*x/L),0,1)+int(pi*(2-x)*cos(n*pi*x/L),1,2));
bn=1/L*(int(pi*x*sin(n*pi*x/L),0,1)+int(pi*(2-x)*sin(n*pi*x/L),1,2));

exp=[a0/2,subs(an*cos(n*x*pi/L)+bn*sin(n*x*pi/L),n,[1 2 3 4])]

fplot(exp)
