clc
clear
load sea_bed.dat

figure(1)
mesh(sea_bed)
%produces 3D topological map

sea_bed_corrected = sea_bed - 300;

figure(2)
mesh(sea_bed_corrected)
xlabel('Width (m)')
ylabel('Length (m)')
zlabel('Depth (m)')
%produces 3D topological map with corrected height

length = size(sea_bed_corrected,1);
width = size(sea_bed_corrected,2);
area = length*width;
%calculates the area of the mapped location

flat_area = sea_bed_corrected(230:250,40:60);
%this creates area of flat seabed that I found by looking around my plot of
%the whole sea bed

figure(3)
mesh(flat_area)
xlabel('Width (m)')
ylabel('Length (m)')
zlabel('Depth (m)')
%plots the 3D flat area

flat_line = flat_area(10,:);
%creates 1D line of a segment through the flat area

figure(4)
plot(flat_line)

max_flat_line = max(flat_line);
min_flat_line = min(flat_line);
std_flat_line = std(flat_line);
%calcualtes max, min and standard deviation of 1D strip
