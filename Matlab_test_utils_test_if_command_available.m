function [ available ] = Matlab_test_utils_test_if_command_available( command,pattern )
    % Test if a command is available by executing it and checking if it
    % contains a specific pattern
    % - command contains the command
    % -
    [cmd_exec_status ,cmdout] = system(command);
    if nargin >= 2
        available = contains(cmdout,pattern);
    else
        available = cmd_exec_status == 0;
    end
end

