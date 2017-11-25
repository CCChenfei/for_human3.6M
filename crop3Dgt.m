clear;

joints_3D = load('joints_3D.mat');


for j = 1:15
    joints = joints_3D.joints_3D{1,j};
    [~,~,m] = size(joints);
    joint_3D = zeros(32,3,m);
    for k = 1:m
        for l = 1:32
            joint_3D(l,1,k) = (joints(l,1,k)+2140)/76; %76 = 4864/64;
            joint_3D(l,2,k) = (joints(l,2,k)+2140)/76;
            joint_3D(l,3,k) = (joints(l,3,k)+1400)/76;
        end
    end
    save(['../multiviewH36m/s1/c1_',num2str(j+1),'/joint_3D.mat'],'joint_3D');
end

for j = 1:15
    joints = joints_3D.joints_3D{2,j};
    [~,~,m] = size(joints);
    joint_3D = zeros(32,3,m);
    for k = 1:m
        for l = 1:32
            joint_3D(l,1,k) = (joints(l,1,k)+2140)/76; %76 = 4864/64;
            joint_3D(l,2,k) = (joints(l,2,k)+2140)/76;
            joint_3D(l,3,k) = (joints(l,3,k)+1400)/76;
        end
    end
    save(['../multiviewH36m/s5/c1_',num2str(j+1),'/joint_3D.mat'],'joint_3D');
end

for j = 1:15
    joints = joints_3D.joints_3D{3,j};
    [~,~,m] = size(joints);
    joint_3D = zeros(32,3,m);
    for k = 1:m
        for l = 1:32
            joint_3D(l,1,k) = (joints(l,1,k)+2140)/76; %76 = 4864/64;
            joint_3D(l,2,k) = (joints(l,2,k)+2140)/76;
            joint_3D(l,3,k) = (joints(l,3,k)+1400)/76;
        end
    end
    save(['../multiviewH36m/s6/c1_',num2str(j+1),'/joint_3D.mat'],'joint_3D');
end

for j = 1:15
    joints = joints_3D.joints_3D{4,j};
    [~,~,m] = size(joints);
    joint_3D = zeros(32,3,m);
    for k = 1:m
        for l = 1:32
            joint_3D(l,1,k) = (joints(l,1,k)+2140)/76; %76 = 4864/64;
            joint_3D(l,2,k) = (joints(l,2,k)+2140)/76;
            joint_3D(l,3,k) = (joints(l,3,k)+1400)/76;
        end
    end
    save(['../multiviewH36m/s7/c1_',num2str(j+1),'/joint_3D.mat'],'joint_3D');
end

for j = 1:15
    joints = joints_3D.joints_3D{5,j};
    [~,~,m] = size(joints);
    joint_3D = zeros(32,3,m);
    for k = 1:m
        for l = 1:32
            joint_3D(l,1,k) = (joints(l,1,k)+2140)/76; %76 = 4864/64;
            joint_3D(l,2,k) = (joints(l,2,k)+2140)/76;
            joint_3D(l,3,k) = (joints(l,3,k)+1400)/76;
        end
    end
    save(['../multiviewH36m/s8/c1_',num2str(j+1),'/joint_3D.mat'],'joint_3D');
end

for j = 1:15
    joints = joints_3D.joints_3D{6,j};
    [~,~,m] = size(joints);
    joint_3D = zeros(32,3,m);
    for k = 1:m
        for l = 1:32
            joint_3D(l,1,k) = (joints(l,1,k)+2140)/76; %76 = 4864/64;
            joint_3D(l,2,k) = (joints(l,2,k)+2140)/76;
            joint_3D(l,3,k) = (joints(l,3,k)+1400)/76;
        end
    end
    save(['../multiviewH36m/s9/c1_',num2str(j+1),'/joint_3D.mat'],'joint_3D');
end

for j = 1:15
    joints = joints_3D.joints_3D{7,j};
    [~,~,m] = size(joints);
    joint_3D = zeros(32,3,m);
    for k = 1:m
        for l = 1:32
            joint_3D(l,1,k) = (joints(l,1,k)+2140)/76; %76 = 4864/64;
            joint_3D(l,2,k) = (joints(l,2,k)+2140)/76;
            joint_3D(l,3,k) = (joints(l,3,k)+1400)/76;
        end
    end
    save(['../multiviewH36m/s11/c1_',num2str(j+1),'/joint_3D.mat'],'joint_3D');
end