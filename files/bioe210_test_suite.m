
% BIOE 210 Matlab Test Suite
% Examples courtesy of the Matlab documentation.
%
% Some warnings may result when you run this code regarding functions
% that will be removed in a future release. This is not a problem.
% There should not be any errors if installed correctly.
%
% Revised 01/16/2019 for Matlab R2018a or later.

clear all;
clc;

%fitlm
load carsmall
tbl = table(Weight,Acceleration,MPG,'VariableNames',{'Weight','Acceleration','MPG'});
lm = fitlm(tbl,'MPG~Weight+Acceleration');

%lasso
load lasso_data.mat
X = lassoX;
r = [0;2;0;-3;0];
Y = X*r + randn(100,1)*.1;
B = lasso(X,Y);

%linprog
A = [1 1
    1 1/4
    1 -1
    -1/4 -1
    -1 -1
    -1 1];
b = [2 1 2 1 -1 2];
f = [-1 -1/3];
linx = linprog(f,A,b);

%quadprog
H = [1 -1; -1 2]; 
f = [-2; -6];
A = [1 1; -1 2; 2 1];
b = [2; 2; 3];
lb = zeros(2,1);
options = optimoptions('quadprog',...
    'Algorithm','interior-point-convex','Display','off');
[quadx,fval,exitflag,output,lambda] = ...
   quadprog(H,f,A,b,[],[],lb,[],[],options);

%svmtrain
load fisheriris
xdata = meas(51:end,3:4);
group = species(51:end);
svmStruct = fitcsvm(xdata,group);
%svmclassify
Xnew = [5 2; 4 1.5];
species = predict(svmStruct,Xnew);

%princomp
load hald;
[pc,score,latent,tsquare] = pca(ingredients);

%plsregress
load spectra
X = NIR;
y = octane;
[XL,yl,XS,YS,beta,PCTVAR] = plsregress(X,y,10);

% Reporting
lm.Coefficients.Estimate, B(:,25), linx, quadx, species, score(1:5), XL(1:5)
