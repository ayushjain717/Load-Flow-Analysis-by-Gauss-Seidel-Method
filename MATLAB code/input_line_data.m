function linedata = input_line_data()
%% Line data to be given by the user as the input.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% R - Resistance
% X - Reactance
% G - Conductance
% B - Susceptance
% Y/2 - Shunt admittance
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          |From|To |   R    |   X    |   G    |   B    |  Total  |  Y/2  |
%          |Bus |Bus|   pu   |   pu   |   pu   |   pu   | charging|  pu   |
linedata = [ 1    2   0.01008  0.05040  3.81563 -19.0781   10.25   0.05125;
             1    3   0.00744  0.03720  5.16956 -25.8478    7.75   0.03875;
             2    4   0.00744  0.03720  5.16956 -25.8478    7.75   0.03875;
             3    4   0.01272  0.06360  3.02371 -15.1185   12.75   0.06375;];

end