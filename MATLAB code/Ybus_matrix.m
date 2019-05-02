function Ybus = Ybus_matrix()
%% From the line data given, generating the Ybus matrix.
linedata = input_line_data();

init_bus = linedata(:,1);       % From bus number
final_bus = linedata(:,2);      % To bus number
r = linedata(:,3);              % Resistance, R
x = linedata(:,4);              % Reactance, X
g = linedata(:,5);              % Conductance, G
b = linedata(:,6);              % Susceptance, B
s = linedata(:,8);              % Shunt or Ground Admittance
z = r + 1i*x;                   % Impedance
y = g + 1i*b;                   % Admittance
s = 1i*s;                       % Shunt from bus to the ground

tot_buses = max(max(init_bus),max(final_bus));    % total no. of buses
tot_branches = length(init_bus);                  % no. of branches
Ybus = zeros(tot_buses,tot_branches);             % Initialising YBus

% Creating a shunt bus to store only the shunt admittances.
sbus = zeros(tot_buses,tot_branches);             % Initialising Shunt bus

% Generating Ybus matrix.
for a = 1:tot_buses
    Ybus(init_bus(a),final_bus(a)) = -y(a);
    Ybus(final_bus(a),init_bus(a)) = -y(a);
end

for b = 1:tot_buses
    sbus(init_bus(b),final_bus(b)) = s(b);
    sbus(final_bus(b),init_bus(b)) = s(b);
end

for b = 1:tot_buses
    for c = 1:tot_buses
        if c ~= b
            Ybus(b,b) = Ybus(b,b) - Ybus(b,c) + sbus(b,c);
        end
    end
end
% Note:- If the Ybus matrix is already known to us then we can comment out
% this portion of the code and directly give Ybus matrix as the input.

end