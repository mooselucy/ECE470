clc; clear all;

vrep=remApi('remoteApi');
vrep.simxFinish(-1);
clientID=vrep.simxStart('127.0.0.1',19999,true,true,5000,5);
if (clientID>-1)
    disp('Connected');
    %Generate object handles (robot nodes)
    [returnCode,joint1]=vrep.simxGetObjectHandle(clientID,'UR5_joint1',vrep.simx_opmode_blocking);
    [returnCode,joint2]=vrep.simxGetObjectHandle(clientID,'UR5_joint2',vrep.simx_opmode_blocking);
    [returnCode,joint3]=vrep.simxGetObjectHandle(clientID,'UR5_joint3',vrep.simx_opmode_blocking);
    [returnCode,joint4]=vrep.simxGetObjectHandle(clientID,'UR5_joint4',vrep.simx_opmode_blocking);
    [returnCode,joint5]=vrep.simxGetObjectHandle(clientID,'UR5_joint5',vrep.simx_opmode_blocking);
    [returnCode,joint6]=vrep.simxGetObjectHandle(clientID,'UR5_joint6',vrep.simx_opmode_blocking);
    %[returnCode,tip]=vrep.simxGetObjectHandle(clientID,'tip',vrep.sinx_opmode_blocking;
    
    
    %Confirm communication with V-REP was initiated
    vrep.simxAddStatusbarMessage(clientID,'Communication with Matlab initiated',vrep.simx_opmode_blocking);
    disp('Communication with V-REP initiated');
    
    %Movement Test
    [returnCode]=vrep.simxSetJointTargetPosition(clientID,joint1,1,vrep.simx_opmode_oneshot);
    pause(1);
    [returnCode]=vrep.simxSetJointTargetPosition(clientID,joint2,-1,vrep.simx_opmode_oneshot);
    pause(1);
    [returnCode]=vrep.simxSetJointTargetPosition(clientID,joint3,0.5,vrep.simx_opmode_oneshot);
    pause(1);
    [returnCode]=vrep.simxSetJointTargetPosition(clientID,joint4,0.3,vrep.simx_opmode_oneshot);
    pause(1);
    [returnCode]=vrep.simxSetJointTargetPosition(clientID,joint5,3,vrep.simx_opmode_oneshot);
    pause(1);
    [returnCode]=vrep.simxSetJointTargetPosition(clientID,joint6,-1,vrep.simx_opmode_oneshot);
    pause(1);
end

    %Disconnect
    vrep.simxAddStatusbarMessage(clientID,'Communication with Matlab ended',vrep.simx_opmode_blocking);
    vrep.simxFinish(-1);
    disp('Communication with V-REP ended');
    vrep.delete();
    clear all; clc;
    
  
    
    
    