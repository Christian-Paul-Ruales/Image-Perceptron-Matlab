function F = miPerceptron(X,y,w_ini)

w_ini = transpose(w_ini);
[m,n]=size(X);
Xaum=[ones(m,1),X];

s=Xaum*w_ini;
s(s>0)=1;
s(s<=0)=-1;
yhat=s;

contar=0;
contarwhi=0;

for i=1:m
if isequal(yhat(i,1), y(i,1))
else
    contar=contar+1;
end
end
MCE=contar/m;
%MCE
w=w_ini;


   

while MCE > 0.1
   contarwhi=contarwhi+1;
   contarfor=0;
   
 for i2=1:m
     contarfor=contarfor+1;
     
       if ~isequal(yhat(i2,1), y(i2,1))
           pq=(y(i2,1)*Xaum(i2,:)');
           w=w+pq;
                                 
            str2 = [num2str(contarfor),' | ',num2str(X(i2,:)),' | ',num2str(yhat(i2,1)),' | ','Si',' | ',num2str(w')];
            %disp(str2)
            %yhat
            
            s=Xaum*w;
            s(s>0)=1;
            s(s<=0)=-1;
            yhat=s; 

       elseif isequal(yhat(i2,1), y(i2,1))
            str2 = [num2str(contarfor),' | ',num2str(X(i2,:)),' | ',num2str(yhat(i2,1)),' | ','No',' | ',num2str(w')];
            %disp(str2)
            %yhat
       end

 end % FIN FOR
   

contar=0;

for i=1:m
if isequal(yhat(i,1), y(i,1))
else
    contar=contar+1;
end
end
MCE=contar/m;
%yhat
%MCE

end %END WGILE

F = w;
end
