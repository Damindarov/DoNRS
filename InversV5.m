x = 0; y = 0; z = -30; fi = -pi/2;
L1 = 10; L2 =10; L3 = 10;
teta6 = acos((x^2 + z^2 - (L1+L2)^2 - L3^2)/(2*(L1 + L2) * L3));
fi1 = atan2(((L3*sin(teta6))/(x^2+z^2)^(1/2)),(L3^2 - (L1 + L2)^2 - z^2-x^2)/(-2*(L1+L2)*(x^2+z^2)^(1/2)));
fi2 = atan2(z,x);
teta3 = fi1 + fi2;
y3 = y - L3*cos(fi);
z3 = z - L3*sin(fi);
teta2 = atan2((-z3/(y3^2 + z3^2)^(1/2)),(y3/(y3^2 + z3^2))) - acos(-(y3^2 + z3^2 + L1^2 - L2^2)/(2*L1*(y3^2 + z3^2)^(1/2)));
teta4 = atan2((z3-L1*sin(teta2))/L2,(y3 - L1*cos(teta2))/L2);
teta5 = fi - teta4 + teta2;