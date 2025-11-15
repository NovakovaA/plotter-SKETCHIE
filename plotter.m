function[] = plotter(values, pen_color)
x1 = 0;
y1 = 0;
x2 = 0;
y2 = 0;

for i = 1:length(values)
    newline = strtrim(values(i));
    if startsWith(newline, "G0") || startsWith(newline, "G1")
        xStr = regexp(newline, 'X([-+]?[0-9]*\.?[0-9]+)', 'tokens');
        yStr = regexp(newline, 'Y([-+]?[0-9]*\.?[0-9]+)', 'tokens');

        if ~isempty(xStr)
            x2 = str2double(xStr{1}{1});
        end
        if ~isempty(yStr)
            y2 = str2double(yStr{1}{1});
        end

        if startsWith(newline, "G0")
            %plot([x1, x2], [y1, y2], ':w', LineWidth= 2);
        elseif startsWith(newline, "G1")
            plot([x1, x2], [y1, y2], pen_color, LineWidth= 2);
        end
        axis([0 148 0 210])


        x1 = x2;
        y1 = y2;
        pause(0.00001);
    end
end
end