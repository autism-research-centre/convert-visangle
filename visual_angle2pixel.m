function [pixels] = visual_angle2pixel(visual_angle, screen_diagonal, distance, screen_no)
%% This converts any visual angle at any distance to Pixels.
% Requires PTB
% C JAn Freyberg 2015

if ~exist('distance', 'var') || isempty(distance)
    distance = 60;
end

distance = distance*10;


dimensions = Screen('Rect', screen_no);

aspect_ratio = dimensions(3) / dimensions(4);

screendiagonal_mm = screen_diagonal * 25.4;

screenwidth_mm = sqrt(screendiagonal_mm^2/(1+aspect_ratio^(-2)));

%screenwidth_deg = 2 * atan(screenwidth_mm/2/distance);

pixel_width = screenwidth_mm/dimensions(3);

visualangle_mm = tand(0.5 * visual_angle) * 2 * distance;

pixels = round(visualangle_mm / pixel_width);

%pixels = pixel_deg*visual_angle;


end