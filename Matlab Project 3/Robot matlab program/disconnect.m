%Disconnect
vrep.simxAddStatusbarMessage(clientID,'Communication with Matlab ended',vrep.simx_opmode_blocking);
vrep.simxFinish(-1);
disp('Communication with V-REP ended');
vrep.delete();