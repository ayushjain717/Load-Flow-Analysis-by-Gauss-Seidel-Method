function busdata = input_bus_data()
%% Bus data to be given by the user as the input.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Note:-    Bus Types       -      Symbol
%           Slack Bus       -        1
%         Generator Bus     -        2
%           Load Bus        -        3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                   |  Generation |      Load     |
%          |Bus|Type|P(MW)|Q(MVAR)|P(MW)| Q(MVAR) | V,pu |delta|Qmin|Qmax|
busdata = [  1   1     0      0      50    30.99    1.00   0.0    0   0.0 ;
             2   3     0      0     170   105.35    1.00   0.0    0   0.0 ;
             3   3     0      0     200   123.94    1.00   0.0    0   0.0 ;
             4   2    318     0      80    49.58    1.02   0.0   0.1  0.2;];

end