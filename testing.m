% 30/09/15
% Turbulent Scalar Flux

clear all
% close all
% close all
clc
clf
set(0,'DefaultFigureWindowStyle','docked')
dbstop if error
% name of directory

str0 = char('L:\ACADAMIC\HOQ\Runfile_turbulent_scalar_flux');
str1 = char('L:\ACADAMIC\HOQ\HOQ_DATA_JUL_2017');
str2 = char('L:\ACADAMIC\HOQ\HOQ_DATA_JUL_2017\modelparameter');

% Specify case number
starting_case =1; 
no_of_case = 9;

% Special setting for figures
testing_mode = 0;
symposium_9_cases=1;

% default setting
five_step_counter = 0;
contour_count = 0;
num_count = starting_case-1; % count number
if testing_mode==1
no_of_case=starting_case;
end
disp(sprintf('========Processing=========='));

if symposium_9_cases==1
case_name = [5 7 11 105 107 1011 125 127 1211];
if no_of_case>=10
no_of_case=9;
disp(sprintf('warning: Symposium 9 cases option does not allowed over 9 cases'));
end
else
case_name = [5 6 7 9 11 105 106 107 109 1011 125 126 127 129 1211];
end

%     global axis_recorder
    
% main loop
for  case_number = starting_case:no_of_case 

    num_count = num_count+1; % count case number
    
% Symposium 9 cases setting
if symposium_9_cases==1
if case_number == 1||case_number==4||case_number==7;
        five_step_counter = 0; %reset five_step_counter
end
else
if case_number == 1||case_number==6||case_number==11;
        five_step_counter = 0; %reset five_step_counter
end
end
    five_step_counter  = five_step_counter+1;
    
    case_name_to_str = strcat('u',num2str(case_name(case_number))); % convert name into string
    folder_name=sprintf(case_name_to_str);% folder name
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% subroutine_figure1(str0,str1,str2,num_count,case_number,folder_name,five_step_counter)
% subroutine_figure2(str0,str1,str2,num_count,case_number,folder_name,five_step_counter)
% subroutine_figure3(str0,str1,str2,num_count,case_number,folder_name,five_step_counter)
subroutine_figure4(str0,str1,str2,num_count,case_number,folder_name,five_step_counter)
% subroutine_figure5(str0,str1,str2,num_count,case_number,folder_name,five_step_counter)
% subroutine_figure6(str0,str1,str2,num_count,case_number,folder_name,five_step_counter)
% subroutine_figure7(str0,str1,str2,num_count,case_number,folder_name,five_step_counter)
% subroutine_figure8(str0,str1,str2,num_count,case_number,folder_name,five_step_counter)
% subroutine_figure9(str0,str1,str2,num_count,case_number,folder_name,five_step_counter)
% subroutine_figure10(str0,str1,str2,num_count,case_number,folder_name,five_step_counter)
% subroutine_figure11(str0,str1,str2,num_count,case_number,folder_name,five_step_counter)
% subroutine_figure_r1(str0,str1,str2,num_count,case_number,folder_name,five_step_counter)
% subroutine_figure_r2(str0,str1,str2,num_count,case_number,folder_name,five_step_counter)
% subroutine_figure_r3(str0,str1,str2,num_count,case_number,folder_name,five_step_counter)
% subroutine_figure_r4(str0,str1,str2,num_count,case_number,folder_name,five_step_counter)
% subroutine_figure_r5(str0,str1,str2,num_count,case_number,folder_name,five_step_counter)
% Plot contours
% if case_number == 1||case_number==6||case_number==11;
% contour_count = 0;
% end
% contour_count  = contour_count+1;
% % subroutine_t_c_rr_contour(str0,str1,str2,num_count,case_number,folder_name,contour_count)
% 
% if case_number == 5||case_number==10;
% contour_count = 0;
% end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd (str0)

% Save figures
% if symposium_9_cases==1
%     figure(1)
% else
%     figure(case_number)
% end
%     combinedStr = strcat('figure_',folder_name);
%    saveas(gca, combinedStr,'epsc');

end
