clc, clear, close all;
shg;
hold on;

values = readlines("heart.txt");
pen_color = 'r';
plotter(values, pen_color);