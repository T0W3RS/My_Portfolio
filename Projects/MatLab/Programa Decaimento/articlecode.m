HalfLifeCm244 = 18.1; %in years
HalfLifePu240 = 6.564e+3; %in years
HalfLifeU236 = 23.42e+6; %in years

tfinal = 1000; %final time in years
h=0.1 %in years
    
N.Cm244 = zeros((tfinal/h)+1,1);
N.Pu240 = zeros((tfinal/h)+1,1);
N.U236 = zeros((tfinal/h)+1,1);
t = zeros((tfinal/h)+1,1);

N.Cm244(1) = 100; %initial concentration in grams
N.Pu240(1) = 50; %initial concentration in grams
N.U236(1) = 10; %initial concentration in grams
t(1) = 0; % initial time

    for i=0:1:((tfinal/h)-1) %RUNGE-KUTTA
    
        %K1 FACTOR
        K11 = (-((log(2)/HalfLifeCm244)*N.Cm244(i+1)));
        K12 = (-((log(2)/HalfLifePu240)*N.Pu240(i+1))+((log(2)/HalfLifeCm244)*N.Cm244(i+1)));
        K13 = (-((log(2)/HalfLifeU236)*N.U236(i+1))+((log(2)/HalfLifePu240)*N.Pu240(i+1)));
    
        %K2 FACTOR
        K21 = (-((log(2)/HalfLifeCm244)*(N.Cm244(i+1)+((h/2)*K11))));
        K22 = (-((log(2)/HalfLifePu240)*(N.Pu240(i+1)+((h/2)*K12)))+((log(2)/HalfLifeCm244)*(N.Cm244(i+1)+((h/2)*K11))));
        K23 = (-((log(2)/HalfLifeU236)*(N.U236(i+1)+((h/2)*K13)))+((log(2)/HalfLifePu240)*(N.Pu240(i+1)+((h/2)*K12))));
    
        %K3 FACTOR
        K31 = (-((log(2)/HalfLifeCm244)*(N.Cm244(i+1)+((h/2)*K21))));
        K32 = (-((log(2)/HalfLifePu240)*(N.Pu240(i+1)+((h/2)*K22)))+((log(2)/HalfLifeCm244)*(N.Cm244(i+1)+((h/2)*K21))));
        K33 = (-((log(2)/HalfLifeU236)*(N.U236(i+1)+((h/2)*K23)))+((log(2)/HalfLifePu240)*(N.Pu240(i+1)+((h/2)*K22))));
        
        %K4 FACTOR
        K41 = (-((log(2)/HalfLifeCm244)*(N.Cm244(i+1)+K31*h)));
        K42 = (-((log(2)/HalfLifePu240)*(N.Pu240(i+1)+K32*h))+((log(2)/HalfLifeCm244)*(N.Cm244(i+1)+K31*h)));
        K43 = (-((log(2)/HalfLifeU236)*(N.U236(i+1)+K33*h))+((log(2)/HalfLifePu240)*(N.Pu240(i+1)+K32*h)));
        
        %N(i+1)
        N.Cm244(i+2) = N.Cm244(i+1)+((h/6)*(K11+(2*K21)+(2*K31)+K41));
        N.Pu240(i+2) = N.Pu240(i+1)+((h/6)*(K12+(2*K22)+(2*K32)+K42));
        N.U236(i+2) = N.U236(i+1)+((h/6)*(K13+(2*K23)+(2*K33)+K43));
    
    
        t(i+2)= t(i+1)+h;
    end

%PLOTTING
plot(t,N.Cm244,'g',t,N.Pu240,'b',t,N.U236,'r');
title('Mass (g) x Time(years)');
xlabel('Time(years)');
ylabel('Mass(g)');
legend('Cm244','Pu240','U236');