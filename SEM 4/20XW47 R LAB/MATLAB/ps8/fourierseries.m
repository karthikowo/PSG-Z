%1
syms x n k;

%a
% a0=1/pi*int(x^2+x,x,-pi,pi)
% an=1/pi*int((x^2+x)*cos(n*x),-pi,pi)
% bn=1/pi*int((x^2+x)*sin(n*x),-pi,pi)

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
% i

% L=1;
% a0=1/L*(int(pi*x,x,0,1)+int(pi*(2-x),1,2));
% an=1/L*(int(pi*x*cos(n*pi*x/L),0,1)+int(pi*(2-x)*cos(n*pi*x/L),1,2));
% bn=1/L*(int(pi*x*sin(n*pi*x/L),0,1)+int(pi*(2-x)*sin(n*pi*x/L),1,2));
% 
% exp=[a0/2,subs(an*cos(n*x*pi/L)+bn*sin(n*x*pi/L),n,[1 2 3 4])];
% % fplot(sum(exp(1)),[0 2],'red'); %fourier  plot
% % hold on;
% % fplot(sum(exp(1:2)),[0 2],'red'); %fourier  plot
% % hold on;
% % fplot(sum(exp(1:3)),[0 2],'green'); %fourier  plot
% % hold on;
% % fplot(sum(exp(1:4)),[0 2],'yellow'); %fourier  plot
% % hold on;
% fplot(sum(exp(1:5)),[0 2],'black'); %fourier  plot
% hold on;
% f=pi*x*(heaviside(x)-heaviside(x-1))+pi*(2-x)*(heaviside(x-1)-heaviside(x-2));
% fplot(f); %graph plot


% ii

% L=1;
% a0=1/L*(int(1,x,-1,0)+int(x,x,0,1));
% an=1/L*(int(1*cos(n*pi*x/L),-1,0)+int(x*cos(n*pi*x/L),0,1));
% bn=1/L*(int(1*sin(n*pi*x/L),-1,0)+int(x*sin(n*pi*x/L),0,1));
% exp=[a0/2,subs(an*cos(n*x*pi/L)+bn*sin(n*x*pi/L),n,[1 2 3 4])];
% fplot(sum(exp),[-1 1]); %fourier plot
% f=1*(heaviside(x+1)-heaviside(x))+x*(heaviside(x)-heaviside(x-1));
% % fplot(sum(exp(1)),[-1 1],'red'); %fourier  plot
% % hold on;
% % fplot(sum(exp(1:2)),[-1 1],'red'); %fourier  plot
% % hold on;
% % fplot(sum(exp(1:3)),[-1 1],'green'); %fourier  plot
% % hold on;
% % fplot(sum(exp(1:4)),[-1 1],'yellow'); %fourier  plot
% % hold on;
% fplot(sum(exp(1:5)),[-1 1],'black'); %fourier  plot
% hold on;
% fplot(f); %graph plot

% iii

% L=pi;
% a0=1/L*(int(1+x/pi,x,-pi,0)+int(1-x/pi,x,0,pi));
% an=1/L*(int((1+x/pi)*cos(n*pi*x/L),-pi,0)+int((1-x/pi)*cos(n*pi*x/L),0,pi));
% bn=1/L*(int((1+x/pi)*sin(n*pi*x/L),-pi,0)+int((1-x/pi)*sin(n*pi*x/L),0,pi));
% exp=[a0/2,subs(an*cos(n*x*pi/L)+bn*sin(n*x*pi/L),n,[1 2 3 4])];
% % fplot(sum(exp),[-pi pi]); %fourier plot
% % f=(1+x/pi)*(heaviside(x+pi)-heaviside(x))+(1-x/pi)*(heaviside(x)-heaviside(x-pi));
% % fplot(sum(exp(1)),[-pi pi],'red'); %fourier  plot
% % hold on;
% % fplot(sum(exp(1:2)),[-pi pi],'red'); %fourier  plot
% % hold on;
% % fplot(sum(exp(1:3)),[-pi pi],'green'); %fourier  plot
% % hold on;
% % fplot(sum(exp(1:4)),[-pi pi],'yellow'); %fourier  plot
% % hold on;
% fplot(sum(exp(1:5)),[-pi pi],'black'); %fourier  plot
% hold on;
% fplot(f); %graph plot


% 4
% i
% L=3;
% a0=2/L*(int(x^2,0,3));
% an=2/L*(int(x^2*cos(n*pi*x/L),0,3));
% bn=2/L*(int(x^2*sin(n*pi*x/L),0,3));
% halfCosine=[a0/2,subs(an*cos(n*x*pi/L),n,[1 2 3 4])]
% halfSine=[subs(bn*sin(n*x*pi/L),n,[1 2 3 4 5])]

% ii
% L=pi;
% a0=2/L*(int(pi/2,x,0,pi/2)+int(pi-x,pi/2,pi));
% an=2/L*(int(pi/2*cos(n*pi*x/L),0,pi/2)+int((pi-x)*cos(n*pi*x/L),pi/2,pi));
% bn=2/L*(int(pi/2*sin(n*pi*x/L),0,pi/2)+int((pi-x)*sin(n*pi*x/L),pi/2,pi));
% halfCosine=[a0/2,subs(an*cos(n*x*pi/L),n,[1 2 3 4])]
% halfSine=[subs(bn*sin(n*x*pi/L),n,[1 2 3 4 5])]

% iii
% L=4;
% a0=2/L*(int(x-1,x,0,2)+int(3-x,2,4));
% an=2/L*(int((x-1)*cos(n*pi*x/L),0,2)+int((3-x)*cos(n*pi*x/L),2,4));
% bn=2/L*(int((x-1)*sin(n*pi*x/L),0,2)+int((3-x)*sin(n*pi*x/L),2,4));
% halfCosine=[a0/2,subs(an*cos(n*x*pi/L),n,[1 2 3 4])]
% halfSine=[subs(bn*cos(n*x*pi/L),n,[1 2 3 4 5])]

% 5
% i
% L=pi;
% a0=2/L*(int(x,x,0,pi/2)+int(pi/2,x,pi/2,pi));
% an=2/L*(int((x)*cos(n*pi*x/L),0,pi/2)+int((pi/2)*cos(n*pi*x/L),pi/2,pi));
% bn=2/L*(int((x)*sin(n*pi*x/L),0,pi/2)+int((pi/2)*sin(n*pi*x/L),pi/2,pi));
% halfCosine=[a0/2,subs(an*cos(n*x*pi/L),n,[1 2 3 4])];
% halfSine=[subs(bn*sin(n*x*pi/L),n,[1 2 3 4 5])];
% fplot(sum(halfCosine),[0 pi])
% 
% % fplot(sum(halfCosine(1)),[0 pi],'red'); %fourier  plot
% % hold on;
% % fplot(sum(halfCosine(1:2)),[0 pi],'red'); %fourier  plot
% % hold on;
% % fplot(sum(halfCosine(1:3)),[0 pi],'green'); %fourier  plot
% % hold on;
% % fplot(sum(halfCosine(1:4)),[0 pi],'yellow'); %fourier  plot
% % hold on;
% % fplot(sum(halfCosine(1:5)),[0 pi],'black'); %fourier  plot
% 
% % fplot(sum(halfSine), [0 pi])
% 
% f=piecewise(0<x<pi/2,x,pi/2<x<pi,pi/2)
% fplot(f);

% ii
% L=pi;
% a0=2/L*(int(x,x,0,pi/2)+int(pi-x,x,pi/2,pi));
% an=2/L*(int((x)*cos(n*pi*x/L),0,pi/2)+int((pi-x)*cos(n*pi*x/L),pi/2,pi));
% bn=2/L*(int((x)*sin(n*pi*x/L),0,pi/2)+int((pi-x)*sin(n*pi*x/L),pi/2,pi));
% halfCosine=[a0/2,subs(an*cos(n*x*pi/L),n,[1 2 3 4])];
% halfSine=[subs(bn*sin(n*x*pi/L),n,[1 2 3 4 5])];
% fplot(sum(halfCosine),[0 pi])
% % 
% 
% fplot(sum(halfCosine(1)),[0 pi],'red'); %fourier  plot
% hold on;
% fplot(sum(halfCosine(1:2)),[0 pi],'red'); %fourier  plot
% hold on;
% fplot(sum(halfCosine(1:3)),[0 pi],'green'); %fourier  plot
% hold on;
% fplot(sum(halfCosine(1:4)),[0 pi],'yellow'); %fourier  plot
% hold on;
% fplot(sum(halfCosine(1:5)),[0 pi],'black'); %fourier  plot

% fplot(sum(halfSine), [0 pi])

% f=piecewise(0<x<pi/2,x,pi/2<x<pi,pi-x)
% fplot(f)

% iii
% L=4;
% a0=2/L*(int(0,x,0,2)+int(1,x,2,4));
% an=2/L*(int((0)*cos(n*pi*x/L),x,0,2)+int(1*cos(n*pi*x/L),2,4));
% bn=2/L*(int((0)*sin(n*pi*x/L),x,0,2)+int(2*sin(n*pi*x/L),2,4));
% halfCosine=[a0/2,subs(an*cos(n*x*pi/L),n,[1 2 3 4])];
% halfSine=[subs(bn*sin(n*x*pi/L),n,[1 2 3 4 5])];

% fplot(sum(halfCosine),[0 4])


% % fplot(sum(halfCosine(1)),[0 4],'red'); %fourier  plot
% % hold on;
% % fplot(sum(halfCosine(1:2)),[0 4],'red'); %fourier  plot
% % hold on;
% % fplot(sum(halfCosine(1:3)),[0 4],'green'); %fourier  plot
% % hold on;
% % fplot(sum(halfCosine(1:4)),[0 4],'yellow'); %fourier  plot
% % hold on;
% % fplot(sum(halfCosine(1:5)),[0 4],'black'); %fourier  plot
% 
% % fplot(sum(halfSine), [0 4])
% 
% f=piecewise(0<x<2,0,2<x<4,1);
% fplot(f)