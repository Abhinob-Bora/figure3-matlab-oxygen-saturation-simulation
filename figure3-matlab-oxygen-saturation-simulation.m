%figure 3 

% Parameters 

Hb_low = 12; % Low hemoglobin level (g/dL) 

Hb_normal = 15; % Normal hemoglobin level (g/dL) 

Hb_high = 18; % High hemoglobin level (g/dL) 

 

% Time vector 

t = 0:0.001:0.75; % Time in seconds 

 

% Oxygen saturation function (hypothetical function for demonstration) 

oxygen_saturation = @(Hb, t) 100 * (1 - exp(-Hb * t / 0.1)); 

 

% Calculate saturation over time for different Hb levels 

sat_low = oxygen_saturation(Hb_low, t); 

sat_normal = oxygen_saturation(Hb_normal, t); 

sat_high = oxygen_saturation(Hb_high, t); 

 

% Plot 

figure; 

plot(t, sat_low, 'r-', 'LineWidth', 2); hold on; 

plot(t, sat_normal, 'g-', 'LineWidth', 2); 

plot(t, sat_high, 'b-', 'LineWidth', 2); 

grid on; 

xlabel('Time in capillary (sec)'); 

ylabel('Oxygen Saturation (%)'); 

legend('Low Hb', 'Normal Hb', 'High Hb'); 

title('Oxygen Saturation with Time in Hemoglobin'); 