clc; clear, close all;
shg;
hold on;

values = readlines("Rsquirtle_plotted.txt");
pen_color = 'r';
plotter(values, pen_color)
values = readlines("Gsquirtle_plotted.txt");
pen_color = 'g';
plotter(values, pen_color)
values = readlines("Bsquirtle_plotted.txt");
pen_color = 'c';
plotter(values, pen_color)
values = readlines("Ksquirtle_plotted.txt");
pen_color = 'k';
plotter(values, pen_color)
