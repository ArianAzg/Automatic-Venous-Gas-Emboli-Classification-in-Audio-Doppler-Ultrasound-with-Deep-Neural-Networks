clc
clear
close all

% This code is used to organize and divide the data into Training,
% Validation, and Test sets for each VGE class based on Spencer code

%% Reference

%       A. Azarang*, D.Q. Le*, A. Hoang, L. Blogg, P.A. Dayton, R. Lance, M. Natoli, A. Gatrell, 
%       Frauke Tillmans, R.E. Moon, P. Lindholm, and V. Papadopoulou, "Deep Learning-Based Venous Gas Emboli Grade 
%       Classification in Doppler Ultrasound Audio Recordings"

%       Authors contributed equally
%% Reading the original data folder parameters
currentFolder = pwd;

cd 'C:\Users\path_to_original_data\4' %Value 4 should change for each class folder, i.e. 0, 1, 2, 3, 4 
org_folder = pwd;
disp(org_folder)
list_folders = dir(pwd);
A = struct2cell(list_folders);
L = length(A)-2;

%% Train-Validation-Test Division
train_size = floor(0.7*L);                      %80% will be allocated to Training set
test_size = floor(0.2*L);                       %20% will be allocated to Training set
validation_size = L - (train_size + test_size); %The remaining data will be allocated to Validation set

mkdir 'C:\Users\path_to_original_data\Shuffled_data\Train\4'       %Value 4 should change for each class folder, i.e. 0, 1, 2, 3, 4
Dest     = 'C:\Users\path_to_original_data\Shuffled_data\Train\4'; %Value 4 should change for each class folder, i.e. 0, 1, 2, 3, 4
FileList = dir(fullfile(org_folder, '*.wav'));
index_train    = randperm(numel(FileList), train_size);
for k = 1:train_size
  Source = fullfile(org_folder, FileList(index_train(k)).name);
  copyfile(Source, Dest);
end

mkdir 'C:\Users\path_to_original_data\Shuffled_data\Test\4'       %Value 4 should change for each class folder, i.e. 0, 1, 2, 3, 4
Dest     = 'C:\Users\path_to_original_data\Shuffled_data\Test\4'; %Value 4 should change for each class folder, i.e. 0, 1, 2, 3, 4
FileList = dir(fullfile(org_folder, '*.wav'));
index_test    = randperm(numel(FileList), test_size);
for k = 1:test_size
  Source = fullfile(org_folder, FileList(index_test(k)).name);
  copyfile(Source, Dest);
end

mkdir 'C:\Users\path_to_original_data\Shuffled_data\Validation\4'       %Value 4 should change for each class folder, i.e. 0, 1, 2, 3, 4
Dest     = 'C:\Users\path_to_original_data\Shuffled_data\Validation\4'; %Value 4 should change for each class folder, i.e. 0, 1, 2, 3, 4
FileList = dir(fullfile(org_folder, '*.wav'));
index_val    = randperm(numel(FileList), validation_size);
for k = 1:validation_size
  Source = fullfile(org_folder, FileList(index_val(k)).name);
  copyfile(Source, Dest);
end

%EOC
