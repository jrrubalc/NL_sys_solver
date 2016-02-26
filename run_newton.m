%
% Consider the non-linear system
%   exp(u) - cos(v) + u - v - c = 0
%   exp(v) + sin(u) + v + u = 0
% This code calculates the root vector (u, v) for c = 10
%
clear
%
c=10;
r=[1 1]';
tol=1.0e-10;
%
[r, n]=newton_sys('f', 'fp_2', c, r, tol);
%
disp('  ')
disp(['  The root found is (u, v) = (',num2str(r(1),'%16.8e'),', ',num2str(r(2),'%16.8e'),').'])
disp(['  It takes n = ',num2str(n),' iterations to reach err <= ',...
num2str(tol),'.'])
disp('  ')
%
