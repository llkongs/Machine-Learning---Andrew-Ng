function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
C = [X y];
C1 = zeros(1,2);
C0 = zeros(1,2);
for i = 1:size(C,1)
    if C(i,3) == 1
        C1 = [C1;C(i,1:2)];
    else
        C0 = [C0;C(i,1:2)];
    end
end
plot(C1(2:size(C1,1),1),C1(2:size(C1,1),2),'k+','LineWidth',2,'MarkerSize',7);
hold on 
plot(C0(2:size(C0,1),1),C0(2:size(C0,1),2),'ko','MarkerFaceColor','y','MarkerSize',7);

% =========================================================================



hold off;

end
