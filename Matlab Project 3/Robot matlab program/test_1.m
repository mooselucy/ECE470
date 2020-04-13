x=0:0.01:2*pi;
y=sin(x);
for (k=1:629)
    position(1,1)=y(1,k)
    
    [returnCode]=vrep.simxSetJointTargetPosition(clientID,joint1,position(1,1),vrep.simx_opmode_oneshot);
    [returnCode]=vrep.simxSetJointTargetPosition(clientID,joint2,position(1,1),vrep.simx_opmode_oneshot);
    [returnCode]=vrep.simxSetJointTargetPosition(clientID,joint3,position(1,1),vrep.simx_opmode_oneshot);
    [returnCode]=vrep.simxSetJointTargetPosition(clientID,joint4,position(1,1),vrep.simx_opmode_oneshot);
    [returnCode]=vrep.simxSetJointTargetPosition(clientID,joint5,position(1,1),vrep.simx_opmode_oneshot);
    [returnCode]=vrep.simxSetJointTargetPosition(clientID,joint6,position(1,1),vrep.simx_opmode_oneshot);
    pause(t(1,1));
end