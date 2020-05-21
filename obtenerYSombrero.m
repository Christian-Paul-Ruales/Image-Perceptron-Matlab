function F=obtenerYSombrero(X,w)
[m,n]=size(X);
Xaum=[ones(m,1),X];
s=Xaum*w;
s
s(s>0)=1;
s(s<=0)=-1;
yhat=s;

F=yhat;
end