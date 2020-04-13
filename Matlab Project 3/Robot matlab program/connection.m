vrep=remApi('remoteApi');
vrep.simxFinish(-1);
clientID=vrep.simxStart('127.0.0.1',19999,true,true,5000,5);
if (clientID>-1)
    disp('Connected');
%Generate object handles for 6R robot arm joints 1 to 6
[returnCode,joint1]=vrep.simxGetObjectHandle(clientID,'UR5_joint1',vrep.simx_opmode_blocking);
[returnCode,joint2]=vrep.simxGetObjectHandle(clientID,'UR5_joint2',vrep.simx_opmode_blocking);
[returnCode,joint3]=vrep.simxGetObjectHandle(clientID,'UR5_joint3',vrep.simx_opmode_blocking);
[returnCode,joint4]=vrep.simxGetObjectHandle(clientID,'UR5_joint4',vrep.simx_opmode_blocking);
[returnCode,joint5]=vrep.simxGetObjectHandle(clientID,'UR5_joint5',vrep.simx_opmode_blocking);
[returnCode,joint6]=vrep.simxGetObjectHandle(clientID,'UR5_joint6',vrep.simx_opmode_blocking);

%Generate object handles for Barrett Hand joints (B1,C1,A0,B0,C0,A2,B2,C2)
%Finger1
[returnCode,jointB1]=vrep.simxGetObjectHandle(clientID,'BarrettHand_jointB_1',vrep.simx_opmode_blocking);
[returnCode,jointC1]=vrep.simxGetObjectHandle(clientID,'BarrettHand_jointC_1',vrep.simx_opmode_blocking);
%Finger2
[returnCode,jointA0]=vrep.simxGetObjectHandle(clientID,'BarrettHand_jointA_0',vrep.simx_opmode_blocking);
[returnCode,jointB0]=vrep.simxGetObjectHandle(clientID,'BarrettHand_jointB_0',vrep.simx_opmode_blocking);
[returnCode,jointC0]=vrep.simxGetObjectHandle(clientID,'BarrettHand_jointC_0',vrep.simx_opmode_blocking);
%Finger3
[returnCode,jointA2]=vrep.simxGetObjectHandle(clientID,'BarrettHand_jointA_2',vrep.simx_opmode_blocking);
[returnCode,jointB2]=vrep.simxGetObjectHandle(clientID,'BarrettHand_jointB_2',vrep.simx_opmode_blocking);
[returnCode,jointC2]=vrep.simxGetObjectHandle(clientID,'BarrettHand_jointC_2',vrep.simx_opmode_blocking);

%Robot operation times
time=0.01;
%Arm
t_joint1=time;
t_joint2=time;
t_joint3=time;
t_joint4=time;
t_joint5=time;
t_joint6=time;

t1=[t_joint1 t_joint2 t_joint3 t_joint4 t_joint5 t_joint6];
joints1=[joint1 joint2 joint3 joint4 joint5 joint6];
%Hand
t_jointB1=time;
t_jointC1=time;
t_jointA0=time;
t_jointB0=time;
t_jointC0=time;
t_jointA2=time;
t_jointB2=time;
t_jointC2=time;
t2=[t_jointB1 t_jointC1 t_jointA0 t_jointB0 t_jointC0 t_jointA2 t_jointB2 t_jointC2];
joints2=[jointB1 jointC1 jointA0 jointB0 jointC0 jointA2 jointB2 jointC2];

%Combined operation times and joint handles
t=[t1 t2];
joints=[joints1 joints2];

%Confirm communication with V-REP was initiated
vrep.simxAddStatusbarMessage(clientID,'Communication with Matlab initiated',vrep.simx_opmode_blocking);
disp('Communication with V-REP initiated');
end