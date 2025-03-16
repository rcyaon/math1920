% Challenge: Parameterize a curve that will make a nice ring or bracelet. 
% Or, parameterize the curve on this barrel cam or the motion of the follower. 

% totoroisal helix for a bracelent or ring

% parameters 
R = 15;    % Major radius (radius of the ring itself)
r = 3;     % Minor radius (thickness of the ring)
w = 1.5;   % helix width
N = 10;    % # helical loops
n = 500;   % # points

theta = linspace(0, 2*pi*N, n);

% parametric equations 
% ily math stack exchange https://math.stackexchange.com/questions/324527/do-these-equations-create-a-helix-wrapped-into-a-torus#:~:text=Sorted%20by:,%2D%3E%20%7BThick%2C%20Black%7D%5D%5D
x = (R + w * cos(N * theta)) .* cos(theta);
y = (R + w * cos(N * theta)) .* sin(theta);
z = w * sin(N * theta);

% plot the toroidal helix
figure;
plot3(x, y, z, 'b', 'LineWidth', 2);
axis equal;
grid on;
xlabel('X'); ylabel('Y'); zlabel('Z');
title('Toroidal Helix for a Bracelet');
