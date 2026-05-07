% DroneSimSetup.m
% This script sets up all the parameters for our drone simulation

%% Simulation Settings
Ts = 0.01;          % Sample time (how often the drone "thinks") = 10ms
sim_duration = 30;  % How long the simulation runs (seconds)

%% Drone Physical Parameters
drone.mass     = 0.5;    % kg  (weight of drone)
drone.gravity  = 9.81;   % m/s² (gravity)
drone.maxThrust = 10;    % Newtons (max upward force)

%% Initial Conditions (where the drone starts)
drone.initPos = [0, 0, 0];  % [X, Y, Z] in meters (on the ground)
drone.initVel = [0, 0, 0];  % [Vx, Vy, Vz] all zero (not moving)

%% Target Altitude for line-following flight
drone.cruiseAlt = 2.0;   % metres above ground

%% Landing Marker
marker.position = [10, 0];  % [X, Y] where the marker is on the ground
marker.radius   = 0.20;     % 20 cm circle (same as competition spec)

%% Line Following Parameters
line.start = [0, 0];      % Start point [X, Y]
line.finish = [15, 0];    % End point [X, Y]
line.Kp = 2.0;            % How aggressively drone corrects drift

disp('✅ Drone parameters loaded successfully!');