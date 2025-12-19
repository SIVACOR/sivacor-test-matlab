% From https://www.mathworks.com/help/matlab/data_analysis/linear-regression.html
%
% From the dataset accidents, load accident data in y and state population data in x. Find the linear regression relation y=β1x between the accidents in a state and the population of a state using the \ operator. The \ operator performs a least-squares regression.

load accidents
x = hwydata(:,14); %Population of states
y = hwydata(:,4); %Accidents per state
format long
b1 = x\y

%b1 = 
%     1.372716735564871e-04
%
%b1 is the slope or regression coefficient. The linear relation is y=β1x=0.0001372x.
%
%Calculate the accidents per state yCalc from x using the relation. Visualize the regression by plotting the actual values y and the calculated values yCalc.

yCalc1 = b1*x;
scatter(x,y)
hold on
plot(x,yCalc1)
xlabel('Population of state')
ylabel('Fatal traffic accidents per state')
title('Linear Regression Relation Between Accidents & Population')
grid on
% save figure
saveas(gcf,'linear_regression_accidents_population.png')
