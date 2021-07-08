%首先计算超额收益 公式为用股票和债券的收益减去无风险收益
%freeRisk(i,2) 为无风险收益
%SP_500(i,2)
%一共5个bond 按照240一段 分割数组 0 1 2 3 4 5
%j=0
% 
%     while(j<5)
%     b=['bond',num2str(j)];
%     eval([b,'=bond([j*240+1:(j+1)*240],[1 2 3])'])
%     j=j+1
%     end
% M_017=mean(stock_017-freeRisk)
% M_593=mean(stock_593-freeRisk)
% M_bond0=mean(bond0-freeRisk)
% M_bond1=mean(bond1-freeRisk)
% M_bond2=mean(bond2-freeRisk)
% M_bond3=mean(bond3-freeRisk)
% M_bond4=mean(bond4-freeRisk)
% M_SP500=mean(SP_500_R-freeRisk)
% 
% S_SP500=std(SP_500_R-freeRisk)
% S_017=std(stock_017-freeRisk)
% S_593=std(stock_593-freeRisk)
% S_bond0=std(bond0-freeRisk)
% S_bond1=std(bond1-freeRisk)
% S_bond2=std(bond2-freeRisk)
% S_bond3=std(bond3-freeRisk)
% S_bond4=std(bond4-freeRisk)
n=240;
X=[ones(n,1),SP_500_R-freeRisk];
[b,bint,r,rint,s]=regress(stock_017-freeRisk,X,0.05)
plot(stock_017-freeRisk,SP_500_R-freeRisk,'g*')
rcoplot(r,rint)

n=240;
X=[ones(n,1),SP_500_R-freeRisk];
[b,bint,r,rint,s]=regress(stock_593-freeRisk,X,0.05)
plot(stock_593-freeRisk,SP_500_R-freeRisk,'g*')
rcoplot(r,rint)


n=240;
X=[ones(n,1),SP_500_R-freeRisk];
[b,bint,r,rint,s]=regress(bond0-freeRisk,X,0.05)
plot(bond0-freeRisk,SP_500_R-freeRisk,'g*')
rcoplot(r,rint)

n=240;
X=[ones(n,1),SP_500_R-freeRisk];
[b,bint,r,rint,s]=regress(bond1-freeRisk,X,0.05)
plot(bond1-freeRisk,SP_500_R-freeRisk,'g*')
rcoplot(r,rint)

n=240;
X=[ones(n,1),SP_500_R-freeRisk];
[b,bint,r,rint,s]=regress(bond2-freeRisk,X,0.05)
plot(bond2-freeRisk,SP_500_R-freeRisk,'g*')
rcoplot(r,rint)

n=240;
X=[ones(n,1),SP_500_R-freeRisk];
[b,bint,r,rint,s]=regress(bond3-freeRisk,X,0.05)
plot(bond3-freeRisk,SP_500_R-freeRisk,'g*')
rcoplot(r,rint)

n=240;
X=[ones(n,1),SP_500_R-freeRisk];
[b,bint,r,rint,s]=regress(bond4-freeRisk,X,0.05)
plot(bond4-freeRisk,SP_500_R-freeRisk,'g*')
rcoplot(r,rint)