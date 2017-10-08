clear;
addpath('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/');



for k = 1:4
    %name = ['/home/chenf/Documents/pose_estimation/data/Human3.6M/test/c',num2str(k),'/mix_test.txt'];
    %fid = fopen(name,'at');
    count = 0;
    joints_test = zeros(14,2,14632);
    for i = 11
        for j = [2,3,7,8,9,10,12,13]
            joints = load(['../Human3.6M/s',num2str(i),'/c',num2str(k),'_',num2str(j),'/joints.mat'],'gt_new');
            joints = joints.gt_new;
            [m, n, p] = size(joints);
            for t = 1:p
                %I = imread(['../Human3.6M/s',num2str(i),'/c',num2str(k),'_',num2str(j),'/im',num2str(t),'.jpg']);
                count = count+1;
                %imwrite(I,['../Human3.6M/test/c',num2str(k),'/im',num2str(count),'.jpg']);
                joints_test(1,1,count) = joints(16,1,t);joints_test(1,2,count) = joints(16,2,t);
                joints_test(2,1,count) = joints(14,1,t);joints_test(2,2,count) = joints(14,2,t);
                joints_test(3,1,count) = joints(26,1,t);joints_test(3,2,count) = joints(26,2,t);
                joints_test(4,1,count) = joints(18,1,t);joints_test(4,2,count) = joints(18,2,t);
                joints_test(5,1,count) = joints(27,1,t);joints_test(5,2,count) = joints(27,2,t);
                joints_test(6,1,count) = joints(19,1,t);joints_test(6,2,count) = joints(19,2,t);
                joints_test(7,1,count) = joints(28,1,t);joints_test(7,2,count) = joints(28,2,t);
                joints_test(8,1,count) = joints(20,1,t);joints_test(8,2,count) = joints(20,2,t);
                joints_test(9,1,count) = joints(2,1,t);joints_test(9,2,count) = joints(2,2,t);
                joints_test(10,1,count) = joints(7,1,t);joints_test(10,2,count) = joints(7,2,t);
                joints_test(11,1,count) = joints(3,1,t);joints_test(11,2,count) = joints(3,2,t);
                joints_test(12,1,count) = joints(8,1,t);joints_test(12,2,count) = joints(8,2,t);
                joints_test(13,1,count) = joints(4,1,t);joints_test(13,2,count) = joints(4,2,t);
                joints_test(14,1,count) = joints(9,1,t);joints_test(14,2,count) = joints(9,2,t);
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
    save(['/home/chenf/Documents/pose_estimation/data/Human3.6M/test/c',num2str(k),'/joints_test.mat'],'joints_test');
end