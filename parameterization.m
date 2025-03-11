% "Challenge: Make your own visualization that illustrates parameterization of surfaces using some software or programming language."
% matlab has built in f'ns for parametric surfaces

#% i did a hyperbolic paraboloid surface below 

% u and v are 3d matrices representing grid values 
[u,v] = meshgrid(-2:0.1:2, -2:0.1:2);

% defining variables 
x = u;
y = v;
z = u.^2 - v.^2;

% plotting surface in 3D
surf(x, y, z)
