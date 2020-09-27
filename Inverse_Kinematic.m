x = 0; y = 20; z = -10;
L1 = 10; L2 =10; L3 = 10;
teta6 = acos((x^2 + z^2 - (L1+L2)^2 - L3^2)/(2*(L1 + L2) * L3));
fi1 = atan2((2*sin(teta6)*L3*(L1+L2)),(x^2 + z^2 + (L1 + L2)^2 - L3^2));
m = -1;
if fi1 > 0
    m = -1;
elseif fi < 0
    m = 1;
end 
teta3 = m * fi1 + atan2(z,x)

fi = -pi/2;%atan2(z,y);
z2 = z - L3*sin(fi);
y2 = y - L3*cos(fi);
fi_shtrih = atan2(z2,y2);
teta4 = acos((y2^2 + z2^2 - L1^2 - L2^2)/(2*L1*L2))
alfa = atan2((L2 * sin(teta4) * 2 * L1),(L1 + z2^2 + y2^2 - L2^2));
m_1 = 1;
if alfa > 0
    m_1 = 1;
elseif alfa < 0
    m_1 = -1;
end 
teta2 = m_1*alfa + atan2(z2,y2)
teta5 = fi - teta2 - teta4
teta1 = atan2(y,x)
