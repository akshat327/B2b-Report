V=16.4;
I=2.7;
t=[75.2; 72.8; 63.9; 57.1; 49.9];
x_acetone=[0.1; 0.3; 0.5; 0.7; 0.9];
cp_water = 4.186;
m = [139.9292; 129.5159 ; 124.1916 ; 120.9281 ; 118.7453];
t_w=78.9;
m_w=149.55;
k=(2.7*16.4*t_w - cp_water*m_w*2)/2
% cp_ac = (2.7*V.*t(6) - k*2)./(2.*m(6))

n=[6.355755; 4.310940; 3.265420; 2.624577; 2.195948];
dT_m = [6.7; 4.5; 2.3; -0.3; 0.2];

cp_mixture = (2.7*V.*t - k*2)./(2.*m)

Q_m = -(I*V.*t/2).*dT_m
H_m = Q_m./n;
H_m

x=0.1:0.2:0.9;
plot(x,H_m)
ylabel("Enthalpy of mixing (H_m) in J/mole")
xlabel("Acetone mole fraction (x_a)")
%title("H_m VS x_a plot")

grid on
