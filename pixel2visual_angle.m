function [visual_angle] = pixel2visual_angle(pixel, screen_no, screen_diagonal, distance)
%% This converts number of pixels into degree of visual angle
% Requires PTB
% C Jan Freyberg 2015

if ~exist('distance', 'var') || isempty(distance)
    distance = 60;
end

if nargin<2
    error('not enough input. Syntax: visual_angle2pixel(visual_angle, screen distance)');
end

distance = distance*10;

dimensions = Screen('Rect', screen_no);

aspect_ratio = dimensions(3) / dimensions(4);


screendiagonal_mm = screen_diagonal * 25.4;

screenwidth_mm = sqrt(screendiagonal_mm^2/(1+aspect_ratio^(-2)));

pixel_width = screenwidth_mm/dimensions(3);

visualangle_mm = pixel * pixel_width;

visual_angle = 2 * atand(visualangle_mm/(2*distance));


% Example: visual_angle=pixel2visual_angle(50)


end