%code for computing force on parachute based on projectional area
rho =  0.0023769; % density of air at sealevel in slugs/ft^3
C_d = 1.5; % max coefficient value
V= 256.22; %ft/s
mass = 1.56; %mass of rocket in slugs
Force = [];
Diameter = [];
Velocity=[];
for S_o=9:1:15 %diameter of parachute
    F = (0.5)*rho*(V^2)*(C_d)*(S_o); %Jerk Force formula 
    Force = [Force,F];
    Diameter = [Diameter,S_o];
end

plot (Diameter, Force);
ylabel('Force[lb_f]');
xlabel('Diameter[ft]');
title ('Parachute force');
figure();
%computing velocity 
for S_o=9:1:15
    V = sqrt((2*(mass*32.174))/((C_d)*(rho)*(pi*S_o^2)/4));
    Velocity= [Velocity,V];
end
plot (Diameter, Velocity);
ylabel('Velocity [ft/s]');
xlabel('Diameter[ft]');
title ('Parachute Terminal Velocity');




