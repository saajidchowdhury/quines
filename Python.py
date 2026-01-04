s = 's = \'\'\nprint(s[0:5] + s.replace(\'\\\\\',\'\\\\\\\\\').replace(\'\\\'\',\'\\\\\\\'\').replace(\'\\n\',\'\\\\n\') + s[5:])'
print(s[0:5] + s.replace('\\','\\\\').replace('\'','\\\'').replace('\n','\\n') + s[5:])
