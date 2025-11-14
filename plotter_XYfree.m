clc, clear, close all;
shg;
values = readlines("shark.txt")

newline = "";

x1 = 0;
y1 = 0;
x2 = 0;
y2 = 0;
for i = 1:length(values)
    newline = values(i);
    newline_characters = split(newline);
    if(newline_characters(1) == "G0")
        x2 = double(newline_characters(2));
        y2 = double(newline_characters(3));
        line([x1,x2],[y1,y2],'color', "g", 'linestyle', ":")
        x1 = x2;
        y1 = y2;
    elseif(newline_characters(1) == "G1")
        x2 = double(newline_characters(2));
        y2 = double(newline_characters(3));
        line([x1,x2],[y1,y2],'color', "b", 'linestyle', "-")
        x1 = x2;
        y1 = y2;
    end
    pause(0.1)
end