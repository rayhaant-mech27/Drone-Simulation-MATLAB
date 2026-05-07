% CreateLine.m
% This paints a white line on the ground for the drone to follow

% Line starts at origin and goes 15 metres North
line_start = [0, 0];
line_end   = [15, 0];

% Save line data for use in Simulink
line_data.start = line_start;
line_data.stop  = line_end;
line_data.width = 0.3;  % 30cm wide line

save('line_data.mat', 'line_data');
disp('✅ Line created successfully!');