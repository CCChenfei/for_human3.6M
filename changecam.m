%根据图片和关节点坐标的平移和缩放对相机参数进行变换

cam1 = load('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/H36MDemo/cam1.mat');
cam2 = load('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/H36MDemo/cam2.mat');
cam3 = load('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/H36MDemo/cam3.mat');
cam4 = load('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/H36MDemo/cam4.mat');

cam1 = cam1.cam1;
cam2 = cam2.cam2;
cam3 = cam3.cam3;
cam4 = cam4.cam4;

camera1 = zeros(1,21);
camera2 = zeros(1,21);
camera3 = zeros(1,21);
camera4 = zeros(1,21);

for i = 1:9
    camera1(1,i) = cam1(1,i)/76;
    camera2(1,i) = cam2(1,i)/76;
    camera3(1,i) = cam3(1,i)/76;
    camera4(1,i) = cam4(1,i)/76;
end
camera1(1,10) = cam1(1,10)+camera1(1,1)*2140+camera1(1,2)*2140+camera1(1,3)*1400;
camera1(1,11) = cam1(1,11)+camera1(1,4)*2140+camera1(1,5)*2140+camera1(1,6)*1400;
camera1(1,12) = cam1(1,12)+camera1(1,7)*2140+camera1(1,8)*2140+camera1(1,9)*1400;

camera2(1,10) = cam2(1,10)+camera2(1,1)*2140+camera2(1,2)*2140+camera2(1,3)*1400;
camera2(1,11) = cam2(1,11)+camera2(1,4)*2140+camera2(1,5)*2140+camera2(1,6)*1400;
camera2(1,12) = cam2(1,12)+camera2(1,7)*2140+camera2(1,8)*2140+camera2(1,9)*1400;

camera3(1,10) = cam3(1,10)+camera3(1,1)*2140+camera3(1,2)*2140+camera3(1,3)*1400;
camera3(1,11) = cam3(1,11)+camera3(1,4)*2140+camera3(1,5)*2140+camera3(1,6)*1400;
camera3(1,12) = cam3(1,12)+camera3(1,7)*2140+camera3(1,8)*2140+camera3(1,9)*1400;

camera4(1,10) = cam4(1,10)+camera4(1,1)*2140+camera4(1,2)*2140+camera4(1,3)*1400;
camera4(1,11) = cam4(1,11)+camera4(1,4)*2140+camera4(1,5)*2140+camera4(1,6)*1400;
camera4(1,12) = cam4(1,12)+camera4(1,7)*2140+camera4(1,8)*2140+camera4(1,9)*1400;

camera1(1,13) = cam1(1,13)*(952/256);
camera1(1,14) = cam1(1,14)*(952/256);
camera1(1,15) = cam1(1,15)*(952/256);
camera1(1,16) = cam1(1,16)*(952/256)+49;

camera2(1,13) = cam2(1,13)*(881/256);
camera2(1,14) = cam2(1,14)*(881/256);
camera2(1,15) = cam2(1,15)*(881/256)+75;
camera2(1,16) = cam2(1,16)*(881/256);

camera3(1,13) = cam3(1,13)*(1000/256);
camera3(1,14) = cam3(1,14)*(1000/256);
camera3(1,15) = cam3(1,15)*(1000/256);
camera3(1,16) = cam3(1,16)*(1000/256);

camera4(1,13) = cam4(1,13)*(986/256);
camera4(1,14) = cam4(1,14)*(986/256);
camera4(1,15) = cam4(1,15)*(986/256)+16;
camera4(1,16) = cam4(1,16)*(986/256);

for i = 17:21
    camera1(1,i) = cam1(1,i);
    camera2(1,i) = cam2(1,i);
    camera3(1,i) = cam3(1,i);
    camera4(1,i) = cam4(1,i);
end

