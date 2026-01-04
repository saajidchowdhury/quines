% s='s='''';fprintf(s);s='''';print(s);';fprintf(cat(2,s(17:19),replace(s,'''','\\'''),s(20:end))); %first version

% s='s='''';fprintf(s);s='''';print(s);';fprintf(cat(2,s(17:19),replace(replace(s,'\\','\\\\'),'''','\\'''),s(20:end))); %second version

% s='s='''';fprintf(s);s='''';print(s[0:3]+s.replace(''\\'',''\\\\'').replace(''\'''',''\''\'''')+s[3:84]);';fprintf(cat(2,s(17:19),replace(replace(s,'\\','\\\\'),'''','\\'''),s(20:end))); % bad third version

% s='s='''';fprintf(s);s='''';print(s[0:3]+s.replace(''\\\\'',''\\\\\\\\'').replace(''\\'''',''\\''\\'''')+s[3:84]);';fprintf(cat(2,s(17:19),replace(replace(s,'\\','\\\\'),'''','\\'''),s(20:end))); %third version

s='s='''';fprintf(cat(2,s(93:95),replace(replace(s,''\\\\'',''\\\\\\\\''),'''''''',''\\\\''''''),s(96:end)));s='''';print(s[0:3]+s.replace(''\\\\'',''\\\\\\\\'').replace(''\\'''',''\\''\\'''')+s[3:84]);';fprintf(cat(2,s(93:95),replace(replace(s,'\\','\\\\'),'''','\\'''),s(96:end)));









% end goal: cat(2,s(17:19),replace(replace(s,'\\','\\\\'),'''','\\'''),s(20:end))

% python print: cat(2,s(17:19),replace(replace(s,\'\\\\\',\'\\\\\\\\\'),\'\'\'\',\'\\\\\'\'\'),s(20:end))

% s needed to have: cat(2,s(17:19),replace(replace(s,\'\\\',\'\\\\\'),\'\'\'\',\'\\\'\'\'),s(20:end))