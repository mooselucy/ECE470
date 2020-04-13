%Robot Home
thetas1=[0 0 0 0 0 0]; %desired arm angles in degrees theta1 to theta6
thetas2=[0 0 90 0 0 90 0 0]; %desired hand angles in degrees B1,C1,A0,B0,C0,A2,B2,C2

thetas=[thetas1 thetas2] %all angles
thetas=thetas*pi/180; %converting to radians
[rows, columns]=size(thetas);
for (k=1:columns)           %for each joint
    jointk=joints(1,k); %find handle
    theta=thetas(1,k); %find desired angle
    [returnCode]=vrep.simxSetJointTargetPosition(clientID,jointk,theta,vrep.simx_opmode_oneshot); %move joint to desired angle
end