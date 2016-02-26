
clear
figure;
hold on;
%
r=[.1 -.8]';
tol=1.0e-10;
%
for c=5.8:.1:10
    
      [r, n]=newton_sys('g', 'gp2', c, r, tol);
      plot(c,r,'*');
end
