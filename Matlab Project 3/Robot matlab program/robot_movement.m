% Initialize communication between MATLAB and V-REP
clc; clear all;
run('connection.m')
%Move arm and hand to initial position
run('robot_home')
pause(10)
%Sequence of movements
run('test_2')
run('test_3')
run('test_4')
run('test_1')
%run('test_1')
%run('test_2')
%run('test_3')

%Bring robot arm and hand back to initial position
run('robot_home')
%End of communications between MATLAB and V-REP
run('disconnect.m')