function plotData(x, y)
    % Open a new figure window
    figure;

    % Plot the data points using red crosses and customize marker size
    plot(x, y, 'rx', 'MarkerSize', 10);

    % Set y-axis label
    ylabel('Profit in $10,000s');

    % Set x-axis label
    xlabel('Population of City in 10,000s');
end

