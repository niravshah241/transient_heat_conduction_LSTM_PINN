//Points
h1 = 0.1;
h2 = 0.1;
Point(1) = {0,0,0,h1};
Point(2) = {5,0,0,h1};
Point(3) = {10,0,0,h2};
Point(4) = {10,10,0,h2};
Point(5) = {5,10,0,h2};
Point(6) = {0,10,0,h1};

//Edges
Line(1) = {6,1};
Physical Line(1) = {1};
Line(2) = {1,2};
Physical Line(2) = {2};
Line(3) = {2,3};
Physical Line(3) = {3};
Line(4) = {3,4};
Physical Line(4) = {4};
Line(5) = {4,5};
Physical Line(5) = {5};
Line(6) = {5,6};
Physical Line(6) = {6};
Line(7) = {2,5};
Physical Line(7) = {7};

//Subdomains
Line Loop(1) = {1,2,7,6};
Plane Surface(1) = {1};
Physical Surface(1) = {1};
Line Loop(2) = {3,4,5,-7};
Plane Surface(2) = {2};
Physical Surface(2) = {2};
