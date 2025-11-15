clc, clear, close all;
shg;
hold on;

values = readlines("shark_hammerhead_group1.gcode");
pen_color = 'k';
plotter(values, pen_color)
