#Activity 05
#Bhagya Wijeratne - 15219

clear all; close all; clc;

a0 = 0.1;
days = 15; % Number of days
initial_dosage = 0.1; % Initial daily dosage in mg
increased_dosage = 0.15; % Increased daily dosage in mg

% Calculate the amount of antibiotics over time with the initial dosage and for the increased dosage
for i = 1:days
    antibiotic_amount(i) = a0 * (0.5)^(i-1) + initial_dosage * (1 - (0.5)^(i-1)) / (1 - 0.5);
    antibiotic_amount_increased(i) = a0 * (0.5)^(i-1) + increased_dosage * (1 - (0.5)^(i-1)) / (1 - 0.5);
end

% Plot the graph
figure;
plot(1:days, antibiotic_amount, 'r-');
hold on;
plot(1:days, antibiotic_amount_increased, 'b--');
title('Antibiotics in Bloodstream Over 15 days');
xlabel('Days');
ylabel('Antibiotic Amount (mg)');
legend('Original Dosage (0.1 mg)', 'Increased Dosage (0.15 mg)');
grid on;


% Determine the time it takes to achieve a constant level with increased dosage from the graph
# approximately 10 days according to the graph


