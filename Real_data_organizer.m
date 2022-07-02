clc
clear 
close all

% This MATLAB code is written to organize and prepare the real data to
% fine-tune the model

%% Reference

%       A. Azarang*, D.Q. Le*, A. Hoang, L. Blogg, P.A. Dayton, R. Lance, M. Natoli, A. Gatrell, 
%       Frauke Tillmans, R.E. Moon, P. Lindholm, and V. Papadopoulou, "Deep Learning-Based Venous Gas Emboli Grade 
%       Classification in Doppler Ultrasound Audio Recordings"
        
%       *Authors contributed equally
%% ************Tip************

% The value "Path_to_Real_data_folder" must correctly set for show the
% location of real audio Doppler recordings

org_folder = 'C:\Users\Path_to_Real_data_folder\Real_data\Subclavian\4'; %Value 4 needs to change to reflec the selected class, i.e., 0, 1, 2, 3, 4
FileList = dir(fullfile(org_folder, '*.flac'));
STR = 'THe3008'; %This value must change to reflect the different subjects
L = length(FileList);
s = 0;
for i = 1:L
    if strcmp(FileList(i).name(1:7), STR)==1 
[x, fs] = audioread(strcat(FileList(i).folder, '\', FileList(i).name));
disp(FileList(i).name)
x = x(:,1);
fs_t = 8000;
x = resample(x, fs_t, fs);
s = [s; x];   
    end   
end

test_len = floor(length(s)/(10*fs_t));

mkdir 'C:\Users\Path_to_Real_data_folder\Real_data\Subclavian_real_data_5_s_clips_11-10-2021\4'

for i = 1:test_len
    filename = sprintf('subject4_grade4_%d.wav', i); 
    %Tip for "Subject4_grade4_%d" encoding:                                                    
    %         Subject4:
    %         grade4: The Spencer grade of this selected subject
    %         %d: Will iterate to count down number of available 5-s data           
    data = s(i*80000 - 79999: i*80000);
    audiowrite(strcat('C:\Users\azarang\Desktop\Postdoc\deep_learning_audio_classification\Real_data\Subclavian_real_data_5_s_clips_11-10-2021\4', '\', filename), data/max(abs(data)), fs_t);
end

%EOC
