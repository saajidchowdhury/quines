s = 's = '''';\nfprintf(cat(2, s(1:5), replace(replace(s,'''''''',''''''''''''),''\\'',''\\\\''), s(6:end)));\n';
fprintf(cat(2, s(1:5), replace(replace(s,'''',''''''),'\','\\'), s(6:end)));
