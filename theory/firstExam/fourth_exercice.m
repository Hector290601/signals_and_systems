%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Héctor Robles
% github: /Hector290601
% creation date: 19 02 2022
% last edit date: 19 02 2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4) Determina:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4.a la energia y la potencia de x(t) = 2e^-|t|
%%%%%%%%%%%%%% write the equation as formule
x_0 = @(t) 2 * exp(-abs(t));
%%%%%%%%%%%%%% get the square from i_0
x_0_2 = @(t) 2^2 * exp(-abs(t)).^2;
%%%%%%%%%%%%%% integrate i_0_2 from -Inf to Inf to get the total energy
E_0_2 = integral(x_0_2 , -Inf, Inf);
% E_0_2 = 4
%%%%%%%%%%%%%% evaluate: lim (1/T * integral from -T/2 to T/2 i^2(t) dt)
%%%%%%%%%%%%%% declarate the symbolic variables
syms x;
%%%%%%%%%%%%%% evaluate the limit
p_0 = limit( 1/x * integral(x_0_2, -Inf/2, Inf/2), x, Inf );
% p_0 = 0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4.b la energía de x(t)
%%%%%%%%%%%%%% create the vectors to store the independent variable
t_1 = -10:0.01:-1;
t_2 = -1:0.01:0;
t_3 = 0:0.01:10;
%%%%%%%%%%%%%% declarate the function part by part
%%%%%%%%%%%%%% to the values lower than -1
x_1_1 = @(t) 0*t;
%%%%%%%%%%%%%% to values between -1 and 0
x_1_2 = @(t) 2+(0*t);
%%%%%%%%%%%%%% to values bigger than 0
x_1_3 = @(t) 2*exp(-t/2);
%%%%%%%%%%%%%% plot to see it's correct with the figure
hold on;
plot(t_1, x_1_1(t_1));
plot(t_2, x_1_2(t_2));
plot(t_3, x_1_3(t_3));
%%%%%%%%%%%%%% get the square from x_1_1
x_1_1_2 = @(t) x_1_1(t).^2;
%%%%%%%%%%%%%% get the square from x_1_2
x_1_2_2 = @(t) x_1_2(t).^2;
%%%%%%%%%%%%%% get the square from x_1_3
x_1_3_2 = @(t) x_1_3(t).^2;
%%%%%%%%%%%%%% integrate x_1_1_2 from -Inf to -1 to get his total energy
E_1_1_2 = integral(x_1_1_2, -Inf, -1);
%%%%%%%%%%%%%% integrate x_1_2_2 from -1 to 0 to get his total energy
E_1_2_2 = integral(x_1_2_2, -1, 0);
%%%%%%%%%%%%%% integrate x_1_3_2 from 0 to Inf to get his total energy
E_1_3_2 = integral(x_1_3_2, 0, Inf);
%%%%%%%%%%%%%% sum all the partial energies to get the total energy
E_1_t = E_1_1_2 + E_1_2_2 + E_1_3_2;
% E_1_t = 8
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4.c La potencia de x(t) en un periodo, esto
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% es, para T=1 y -1<t<1
%%%%%%%%%%%%%% create a vector to store the independent variable
t = -1:0.001:1;
%%%%%%%%%%%%%% declare the function
%%%%%%%%%%%%%% plot to see it's correct with the figure
figure;
plot(t, x_2(t))
x_2 = @(t) t;
%%%%%%%%%%%%%% get the square from x_2
x_2_2 = @(t) t.^2;
%%%%%%%%%%%%%% evaluate: lim (1/T * integral from -T/2 to T/2 i^2(t) dt)
%%%%%%%%%%%%%% declarate the symbolic variables
syms t;
%%%%%%%%%%%%%% evaluate the limit
p_2 = limit( 1/t * integral(x_2_2, -1, 1 ), t, 2 );
% p_2 = 1/3
