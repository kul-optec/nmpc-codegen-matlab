function [ available ] = Matlab_test_utils_test_if_command_available( command,pattern )
    % Test if a command is available by executing it and checking if it
    % contains a specific pattern
    % - command contains the command
    % -
    [cmd_exec_status ,cmdout] = system(command);
    if nargin >= 2
        %Note: `contains` was introduced in MATLAB 2016b and it is not 
        %supported by previous versions, that's why we have to use:
        available = ~isempty(strfind(cmdout,pattern)); 
    else
        available = cmd_exec_status == 0;
    end
end

