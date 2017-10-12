

this_dir=pwd;
filename=[this_dir '\standard_alphabetic.elc'];
filename=[this_dir '\9_18AverageNet256_v1.sfp'];
filename=[this_dir '\dh84devM_c11.dat'];
filename=[this_dir '\sph81pc100.sph'];
filename=[this_dir '\toto7.xyz'];


%readlocs( filename );
[eloc, labels, theta, radius, indices] =readlocs( filename );

%writelocs
filename_out='toto7';
writelocs(eloc, filename_out,'filetype','xyz');