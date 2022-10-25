N=1e4;
x=[1,2,3,4,5,6];
px=[1.67, 1.67, 1.67, 1.67, 1.67, 1.67];
xd=[0 x 8];
pxd=[0 px 0];
fd = cumsum(pxd);
stairs(xd,fd,'r');