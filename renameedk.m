function renameedk(name1,name2)
% renameedk(name1,name2)
% Renames an EDK project in the current directory.
% name1 = existing project name
% name2 = new project name

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



