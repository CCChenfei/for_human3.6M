clear;
addpath('/home/chenf/Documents/pose_estimation/data/multiviewH36m/');
% 
% train_3D = '/home/chenf/Documents/pose_estimation/data/multiviewH36m/train/train_3D.txt';
% for k = 1:4
%     name = ['/home/chenf/Documents/pose_estimation/data/multiviewH36m/train/c',num2str(k),'/mix_train.txt'];
%     fid = fopen(name,'at');
%     if k==1
%         fid3D = fopen(train_3D,'at');       
%     end
%     
%     count = 0;
%     for j = 2:16
%         for i = [1,5,6,7,8,9]
%             joints = load(['../multiviewH36m/s',num2str(i),'/c',num2str(k),'_',num2str(j),'/joints.mat'],'gt_new');
%             joints = joints.gt_new;
%             [m, n, p] = size(joints);
%             if k==1
%                 joints_3D = load(['../multiviewH36m/s',num2str(i),'/c',num2str(k),'_',num2str(j),'/joint_3D.mat'],'joint_3D');
%                 joints_3D = joints_3D.joint_3D;
%             end
%             order = randperm(p);
%             for t = 1:p
%                 I = imread(['../multiviewH36m/s',num2str(i),'/c',num2str(k),'_',num2str(j),'/im',num2str(order(t)),'.jpg']);
%                 count = count+1;
%                 imwrite(I,['../multiviewH36m/train/c',num2str(k),'/im',num2str(count),'.jpg']);
%                 
%                 if k == 1
%                     fprintf(fid3D, '%s ', ['im',num2str(count),'.jpg']);
%                     fprintf(fid3D,'%f,',joints_3D(16,1,order(t)));fprintf(fid3D,'%f,',joints_3D(16,2,order(t)));fprintf(fid3D,'%f,',joints_3D(16,3,order(t)));
%                     fprintf(fid3D,'%f,',joints_3D(14,1,order(t)));fprintf(fid3D,'%f,',joints_3D(14,2,order(t)));fprintf(fid3D,'%f,',joints_3D(14,3,order(t)));
%                     fprintf(fid3D,'%f,',joints_3D(26,1,order(t)));fprintf(fid3D,'%f,',joints_3D(26,2,order(t)));fprintf(fid3D,'%f,',joints_3D(26,3,order(t)));
%                     fprintf(fid3D,'%f,',joints_3D(18,1,order(t)));fprintf(fid3D,'%f,',joints_3D(18,2,order(t)));fprintf(fid3D,'%f,',joints_3D(18,3,order(t)));
%                     fprintf(fid3D,'%f,',joints_3D(27,1,order(t)));fprintf(fid3D,'%f,',joints_3D(27,2,order(t)));fprintf(fid3D,'%f,',joints_3D(27,3,order(t)));
%                     fprintf(fid3D,'%f,',joints_3D(19,1,order(t)));fprintf(fid3D,'%f,',joints_3D(19,2,order(t)));fprintf(fid3D,'%f,',joints_3D(19,3,order(t)));
%                     fprintf(fid3D,'%f,',joints_3D(28,1,order(t)));fprintf(fid3D,'%f,',joints_3D(28,2,order(t)));fprintf(fid3D,'%f,',joints_3D(28,3,order(t)));
%                     fprintf(fid3D,'%f,',joints_3D(20,1,order(t)));fprintf(fid3D,'%f,',joints_3D(20,2,order(t)));fprintf(fid3D,'%f,',joints_3D(20,3,order(t)));
%                     fprintf(fid3D,'%f,',joints_3D(2,1,order(t)));fprintf(fid3D,'%f,',joints_3D(2,2,order(t)));fprintf(fid3D,'%f,',joints_3D(2,3,order(t)));
%                     fprintf(fid3D,'%f,',joints_3D(7,1,order(t)));fprintf(fid3D,'%f,',joints_3D(7,2,order(t)));fprintf(fid3D,'%f,',joints_3D(7,3,order(t)));
%                     fprintf(fid3D,'%f,',joints_3D(3,1,order(t)));fprintf(fid3D,'%f,',joints_3D(3,2,order(t)));fprintf(fid3D,'%f,',joints_3D(3,3,order(t)));
%                     fprintf(fid3D,'%f,',joints_3D(8,1,order(t)));fprintf(fid3D,'%f,',joints_3D(8,2,order(t)));fprintf(fid3D,'%f,',joints_3D(8,3,order(t)));
%                     fprintf(fid3D,'%f,',joints_3D(4,1,order(t)));fprintf(fid3D,'%f,',joints_3D(4,2,order(t)));fprintf(fid3D,'%f,',joints_3D(4,3,order(t)));
%                     fprintf(fid3D,'%f,',joints_3D(9,1,order(t)));fprintf(fid3D,'%f ',joints_3D(9,2,order(t)));fprintf(fid3D,'%f ',joints_3D(9,3,order(t)));
%                     fprintf(fid3D,'%d,%d,%d,%d,%d %d\n', 0,0,0,0,0,0);
%                 end
%                 fprintf(fid, '%s ', ['im',num2str(count),'.jpg']);
%                 fprintf(fid,'%f,',joints(16,1,order(t)));fprintf(fid,'%f,',joints(16,2,order(t)));
%                 fprintf(fid,'%f,',joints(14,1,order(t)));fprintf(fid,'%f,',joints(14,2,order(t)));
%                 fprintf(fid,'%f,',joints(26,1,order(t)));fprintf(fid,'%f,',joints(26,2,order(t)));
%                 fprintf(fid,'%f,',joints(18,1,order(t)));fprintf(fid,'%f,',joints(18,2,order(t)));
%                 fprintf(fid,'%f,',joints(27,1,order(t)));fprintf(fid,'%f,',joints(27,2,order(t)));
%                 fprintf(fid,'%f,',joints(19,1,order(t)));fprintf(fid,'%f,',joints(19,2,order(t)));
%                 fprintf(fid,'%f,',joints(28,1,order(t)));fprintf(fid,'%f,',joints(28,2,order(t)));
%                 fprintf(fid,'%f,',joints(20,1,order(t)));fprintf(fid,'%f,',joints(20,2,order(t)));
%                 fprintf(fid,'%f,',joints(2,1,order(t)));fprintf(fid,'%f,',joints(2,2,order(t)));
%                 fprintf(fid,'%f,',joints(7,1,order(t)));fprintf(fid,'%f,',joints(7,2,order(t)));
%                 fprintf(fid,'%f,',joints(3,1,order(t)));fprintf(fid,'%f,',joints(3,2,order(t)));
%                 fprintf(fid,'%f,',joints(8,1,order(t)));fprintf(fid,'%f,',joints(8,2,order(t)));
%                 fprintf(fid,'%f,',joints(4,1,order(t)));fprintf(fid,'%f,',joints(4,2,order(t)));
%                 fprintf(fid,'%f,',joints(9,1,order(t)));fprintf(fid,'%f ',joints(9,2,order(t)));
%                 fprintf(fid,'%d,%d,%d,%d,%d %d\n', 0,0,0,0,0,0);
%             end
%         end
%     end
%     fclose(fid);
%     if k==1
%         fclose(fid3D);
%     end
% end
% 
% test_3D = '/home/chenf/Documents/pose_estimation/data/multiviewH36m/test/test_3D.txt';
for k = 1:4
%     name = ['/home/chenf/Documents/pose_estimation/data/multiviewH36m/test/c',num2str(k),'/mix_test.txt'];
%     fid = fopen(name,'at');
    count = 0;
%     if k==1
%         fid3D = fopen(test_3D,'at');       
%     end
    test_joint = zeros(14,2,28961);
%     test_3D_joint = zeros(14,3,28961);
    for i = 11
        for j = 2:16
            joints = load(['../multiviewH36m/s',num2str(i),'/c',num2str(k),'_',num2str(j),'/joints.mat'],'gt_new');
            joints = joints.gt_new;
            [m, n, p] = size(joints);
%             if k==1
%                 joints_3D = load(['../multiviewH36m/s',num2str(i),'/c',num2str(k),'_',num2str(j),'/joint_3D.mat'],'joint_3D');
%                 joints_3D = joints_3D.joint_3D;
%             end
            for t = 1:p
               
%                 I = imread(['../multiviewH36m/s',num2str(i),'/c',num2str(k),'_',num2str(j),'/im',num2str(t),'.jpg']);
                count = count+1;
%                 test_3D_joint(1,1,count)=joints_3D(16,1,t);test_3D_joint(1,2,count) = joints_3D(16,2,t);test_3D_joint(1,3,count) = joints_3D(16,3,t);
%                 test_3D_joint(2,1,count)=joints_3D(14,1,t);test_3D_joint(2,2,count) = joints_3D(14,2,t);test_3D_joint(2,3,count) = joints_3D(14,3,t);
%                 test_3D_joint(3,1,count)=joints_3D(26,1,t);test_3D_joint(3,2,count) = joints_3D(26,2,t);test_3D_joint(3,3,count) = joints_3D(26,3,t);
%                 test_3D_joint(4,1,count)=joints_3D(18,1,t);test_3D_joint(4,2,count) = joints_3D(18,2,t);test_3D_joint(4,3,count) = joints_3D(18,3,t);
%                 test_3D_joint(5,1,count)=joints_3D(27,1,t);test_3D_joint(5,2,count) = joints_3D(27,2,t);test_3D_joint(5,3,count) = joints_3D(27,3,t);
%                 test_3D_joint(6,1,count)=joints_3D(19,1,t);test_3D_joint(6,2,count) = joints_3D(19,2,t);test_3D_joint(6,3,count) = joints_3D(19,3,t);
%                 test_3D_joint(7,1,count)=joints_3D(28,1,t);test_3D_joint(7,2,count) = joints_3D(28,2,t);test_3D_joint(7,3,count) = joints_3D(28,3,t);
%                 test_3D_joint(8,1,count)=joints_3D(20,1,t);test_3D_joint(8,2,count) = joints_3D(20,2,t);test_3D_joint(8,3,count) = joints_3D(20,3,t);
%                 test_3D_joint(9,1,count)=joints_3D(2,1,t);test_3D_joint(9,2,count) = joints_3D(2,2,t);test_3D_joint(9,3,count) = joints_3D(2,3,t);
%                 test_3D_joint(10,1,count)=joints_3D(7,1,t);test_3D_joint(10,2,count) = joints_3D(7,2,t);test_3D_joint(10,3,count) = joints_3D(7,3,t);
%                 test_3D_joint(11,1,count)=joints_3D(3,1,t);test_3D_joint(11,2,count) = joints_3D(3,2,t);test_3D_joint(11,3,count) = joints_3D(3,3,t);
%                 test_3D_joint(12,1,count)=joints_3D(8,1,t);test_3D_joint(12,2,count) = joints_3D(8,2,t);test_3D_joint(12,3,count) = joints_3D(8,3,t);
%                 test_3D_joint(13,1,count)=joints_3D(4,1,t);test_3D_joint(13,2,count) = joints_3D(4,2,t);test_3D_joint(13,3,count) = joints_3D(4,3,t);
%                 test_3D_joint(14,1,count)=joints_3D(9,1,t);test_3D_joint(14,2,count) = joints_3D(9,2,t);test_3D_joint(14,3,count) = joints_3D(9,3,t);
%                 imwrite(I,['../multiviewH36m/test/c',num2str(k),'/im',num2str(count),'.jpg']);
                test_joint(1,1,count)=joints(16,1,t);test_joint(1,2,count) = joints(16,2,t);
                test_joint(2,1,count)=joints(14,1,t);test_joint(2,2,count) = joints(14,2,t);
                test_joint(3,1,count)=joints(26,1,t);test_joint(3,2,count) = joints(26,2,t);
                test_joint(4,1,count)=joints(18,1,t);test_joint(4,2,count) = joints(18,2,t);
                test_joint(5,1,count)=joints(27,1,t);test_joint(5,2,count) = joints(27,2,t);
                test_joint(6,1,count)=joints(19,1,t);test_joint(6,2,count) = joints(19,2,t);
                test_joint(7,1,count)=joints(28,1,t);test_joint(7,2,count) = joints(28,2,t);
                test_joint(8,1,count)=joints(20,1,t);test_joint(8,2,count) = joints(20,2,t);
                test_joint(9,1,count)=joints(2,1,t);test_joint(9,2,count) = joints(2,2,t);
                test_joint(10,1,count)=joints(7,1,t);test_joint(10,2,count) = joints(7,2,t);
                test_joint(11,1,count)=joints(3,1,t);test_joint(11,2,count) = joints(3,2,t);
                test_joint(12,1,count)=joints(8,1,t);test_joint(12,2,count) = joints(8,2,t);
                test_joint(13,1,count)=joints(4,1,t);test_joint(13,2,count) = joints(4,2,t);
                test_joint(14,1,count)=joints(9,1,t);test_joint(14,2,count) = joints(9,2,t);
%                 
%                 if k == 1
%                     fprintf(fid3D, '%s ', ['im',num2str(count),'.jpg']);
%                     fprintf(fid3D,'%f,',joints_3D(16,1,t));fprintf(fid3D,'%f,',joints_3D(16,2,t));fprintf(fid3D,'%f,',joints_3D(16,3,t));
%                     fprintf(fid3D,'%f,',joints_3D(14,1,t));fprintf(fid3D,'%f,',joints_3D(14,2,t));fprintf(fid3D,'%f,',joints_3D(14,3,t));
%                     fprintf(fid3D,'%f,',joints_3D(26,1,t));fprintf(fid3D,'%f,',joints_3D(26,2,t));fprintf(fid3D,'%f,',joints_3D(26,3,t));
%                     fprintf(fid3D,'%f,',joints_3D(18,1,t));fprintf(fid3D,'%f,',joints_3D(18,2,t));fprintf(fid3D,'%f,',joints_3D(18,3,t));
%                     fprintf(fid3D,'%f,',joints_3D(27,1,t));fprintf(fid3D,'%f,',joints_3D(27,2,t));fprintf(fid3D,'%f,',joints_3D(27,3,t));
%                     fprintf(fid3D,'%f,',joints_3D(19,1,t));fprintf(fid3D,'%f,',joints_3D(19,2,t));fprintf(fid3D,'%f,',joints_3D(19,3,t));
%                     fprintf(fid3D,'%f,',joints_3D(28,1,t));fprintf(fid3D,'%f,',joints_3D(28,2,t));fprintf(fid3D,'%f,',joints_3D(28,3,t));
%                     fprintf(fid3D,'%f,',joints_3D(20,1,t));fprintf(fid3D,'%f,',joints_3D(20,2,t));fprintf(fid3D,'%f,',joints_3D(20,3,t));
%                     fprintf(fid3D,'%f,',joints_3D(2,1,t));fprintf(fid3D,'%f,',joints_3D(2,2,t));fprintf(fid3D,'%f,',joints_3D(2,3,t));
%                     fprintf(fid3D,'%f,',joints_3D(7,1,t));fprintf(fid3D,'%f,',joints_3D(7,2,t));fprintf(fid3D,'%f,',joints_3D(7,3,t));
%                     fprintf(fid3D,'%f,',joints_3D(3,1,t));fprintf(fid3D,'%f,',joints_3D(3,2,t));fprintf(fid3D,'%f,',joints_3D(3,3,t));
%                     fprintf(fid3D,'%f,',joints_3D(8,1,t));fprintf(fid3D,'%f,',joints_3D(8,2,t));fprintf(fid3D,'%f,',joints_3D(8,3,t));
%                     fprintf(fid3D,'%f,',joints_3D(4,1,t));fprintf(fid3D,'%f,',joints_3D(4,2,t));fprintf(fid3D,'%f,',joints_3D(4,3,t));
%                     fprintf(fid3D,'%f,',joints_3D(9,1,t));fprintf(fid3D,'%f ',joints_3D(9,2,t));fprintf(fid3D,'%f ',joints_3D(9,3,t));
%                     fprintf(fid3D,'%d,%d,%d,%d,%d %d\n', 0,0,0,0,0,0);
%                 end
%                 
%                 fprintf(fid, '%s ', ['im',num2str(count),'.jpg']);
%                 fprintf(fid,'%f,',joints(16,1,t));fprintf(fid,'%f,',joints(16,2,t));
%                 fprintf(fid,'%f,',joints(14,1,t));fprintf(fid,'%f,',joints(14,2,t));
%                 fprintf(fid,'%f,',joints(26,1,t));fprintf(fid,'%f,',joints(26,2,t));
%                 fprintf(fid,'%f,',joints(18,1,t));fprintf(fid,'%f,',joints(18,2,t));
%                 fprintf(fid,'%f,',joints(27,1,t));fprintf(fid,'%f,',joints(27,2,t));
%                 fprintf(fid,'%f,',joints(19,1,t));fprintf(fid,'%f,',joints(19,2,t));
%                 fprintf(fid,'%f,',joints(28,1,t));fprintf(fid,'%f,',joints(28,2,t));
%                 fprintf(fid,'%f,',joints(20,1,t));fprintf(fid,'%f,',joints(20,2,t));
%                 fprintf(fid,'%f,',joints(2,1,t));fprintf(fid,'%f,',joints(2,2,t));
%                 fprintf(fid,'%f,',joints(7,1,t));fprintf(fid,'%f,',joints(7,2,t));
%                 fprintf(fid,'%f,',joints(3,1,t));fprintf(fid,'%f,',joints(3,2,t));
%                 fprintf(fid,'%f,',joints(8,1,t));fprintf(fid,'%f,',joints(8,2,t));
%                 fprintf(fid,'%f,',joints(4,1,t));fprintf(fid,'%f,',joints(4,2,t));
%                 fprintf(fid,'%f,',joints(9,1,t));fprintf(fid,'%f ',joints(9,2,t));
%                 fprintf(fid,'%d,%d,%d,%d,%d %d\n', 0,0,0,0,0,0);
            end
        end
    end
%     fclose(fid);
%     if k==1
%         fclose(fid3D);
%     end
    save(['test_joint',num2str(k),'.mat'],'test_joint');
%     save(['test_3D_joint.mat'],'test_3D_joint');
end
