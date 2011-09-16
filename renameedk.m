function renameedk(name1,name2)

% mhs file
file = dir('*.mhs');
newfilename = strrep(file(1).name,name1,name2);
movefile(file(1).name,newfilename);
replaceinfile(name1,name2,newfilename,'-nobak');

% xmp file
file = dir('*.xmp');
newfilename = strrep(file(1).name,name1,name2);
movefile(file(1).name,newfilename);
replaceinfile(name1,name2,newfilename,'-nobak');

% mss file
file = dir('*.mss');
newfilename = strrep(file(1).name,name1,name2);
movefile(file(1).name,newfilename);

% ucf file
file = dir('data\*.ucf');
newfilename = strrep(file(1).name,name1,name2);
movefile(['data\' file(1).name],['data\' newfilename]);



