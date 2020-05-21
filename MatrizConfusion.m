function Matrix =  MatrizConfusion(y,yhat)
N = 100;
matrix = zeros(2,2);

VP = 0;
FN = 0;
FP = 0;
VN =0;
    for i = 1:N
        if isequal(y(i),1) && isequal(yhat(i),1)
            VP = VP + 1;
        end
        if isequal(y(i),1) && isequal(yhat(i),-1)
            FN = FN + 1;
        end
        if isequal(y(i),-1) && isequal(yhat(i),1)
            FP = FP + 1;
        end
        if isequal(y(i),-1) && isequal(yhat(i),-1)
            VN = VN + 1;
        end
    
    end
matrix(1,1) = VP;
matrix(1,2) = FN;
matrix(2,1) = FP;
matrix(2,2) = VN;
Matrix = matrix;
end