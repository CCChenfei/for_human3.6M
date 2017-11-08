clear;
addpath('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/');

for k = 1:4
    name = ['/home/chenf/Documents/pose_estimation/data/Human3.6M/train/c',num2str(k),'/mix_train.txt'];
    fid = fopen(name,'at');
    count = 0;
    for j = 2:16
        for i = [1,5,6,7,8,9]
            joints = load(['../Human3.6M/s',num2str(i),'/c',num2str(k),'_',num2str(j),'/joints.mat'],'gt_new');
            joints = joints.gt_new;
            [m, n, p] = size(joints);
            order = randperm(p);
            for t = 1:p
                I = imread(['../Human3.6M/s',num2str(i),'/c',num2str(k),'_',num2str(j),'/im',num2str(order(t)),'.jpg']);
                count = count+1;
                imwrite(I,['../Human3.6M/train/c',num2str(k),'/im',num2str(count),'.jpg']);
                
                fprintf(fid, '%s ', ['im',num2str(count),'.jpg']);
                fprintf(fid,'%f,',joints(16,1,order(t)));fprintf(fid,'%f,',joints(16,2,order(t)));
                fprintf(fid,'%f,',joints(14,1,order(t)));fprintf(fid,'%f,',joints(14,2,order(t)));
                fprintf(fid,'%f,',joints(26,1,order(t)));fprintf(fid,'%f,',joints(26,2,order(t)));
                fprintf(fid,'%f,',joints(18,1,order(t)));fprintf(fid,'%f,',joints(18,2,order(t)));
                fprintf(fid,'%f,',joints(27,1,order(t)));fprintf(fid,'%f,',joints(27,2,order(t)));
                fprintf(fid,'%f,',joints(19,1,order(t)));fprintf(fid,'%f,',joints(19,2,order(t)));
                fprintf(fid,'%f,',joints(28,1,order(t)));fprintf(fid,'%f,',joints(28,2,order(t)));
                fprintf(fid,'%f,',joints(20,1,order(t)));fprintf(fid,'%f,',joints(20,2,order(t)));
                fprintf(fid,'%f,',joints(2,1,order(t)));fprintf(fid,'%f,',joints(2,2,order(t)));
                fprintf(fid,'%f,',joints(7,1,order(t)));fprintf(fid,'%f,',joints(7,2,order(t)));
                fprintf(fid,'%f,',joints(3,1,order(t)));fprintf(fid,'%f,',joints(3,2,order(t)));
                fprintf(fid,'%f,',joints(8,1,order(t)));fprintf(fid,'%f,',joints(8,2,order(t)));
                fprintf(fid,'%f,',joints(4,1,order(t)));fprintf(fid,'%f,',joints(4,2,order(t)));
                fprintf(fid,'%f,',joints(9,1,order(t)));fprintf(fid,'%f ',joints(9,2,order(t)));
                fprintf(fid,'%d,%d,%d,%d,%d %d\n', 0,0,0,0,0,0);
            end
        end
    end
    fclose(fid);
end

for k = 1:4
    name = ['/home/chenf/Documents/pose_estimation/data/Human3.6M/test/c',num2str(k),'/mix_test.txt'];
    fid = fopen(name,'at');
    count = 0;
    for i = 11
        for j = 2:16
            joints = load(['../Human3.6M/s',num2str(i),'/c',num2str(k),'_',num2str(j),'/joints.mat'],'gt_new');
            joints = joints.gt_new;
            [m, n, p] = size(joints);
            for t = 1:p
                I = imread(['../Human3.6M/s',num2str(i),'/c',num2str(k),'_',num2str(j),'/im',num2str(t),'.jpg']);
                count = count+1;
                imwrite(I,['../Human3.6M/test/c',num2str(k),'/im',num2str(count),'.jpg']);
                
                fprintf(fid, '%s ', ['im',num2str(count),'.jpg']);
                fprintf(fid,'%f,',joints(16,1,t));fprintf(fid,'%f,',joints(16,2,t));
                fprintf(fid,'%f,',joints(14,1,t));fprintf(fid,'%f,',joints(14,2,t));
                fprintf(fid,'%f,',joints(26,1,t));fprintf(fid,'%f,',joints(26,2,t));
                fprintf(fid,'%f,',joints(18,1,t));fprintf(fid,'%f,',joints(18,2,t));
                fprintf(fid,'%f,',joints(27,1,t));fprintf(fid,'%f,',joints(27,2,t));
                fprintf(fid,'%f,',joints(19,1,t));fprintf(fid,'%f,',joints(19,2,t));
                fprintf(fid,'%f,',joints(28,1,t));fprintf(fid,'%f,',joints(28,2,t));
                fprintf(fid,'%f,',joints(20,1,t));fprintf(fid,'%f,',joints(20,2,t));
                fprintf(fid,'%f,',joints(2,1,t));fprintf(fid,'%f,',joints(2,2,t));
                fprintf(fid,'%f,',joints(7,1,t));fprintf(fid,'%f,',joints(7,2,t));
                fprintf(fid,'%f,',joints(3,1,t));fprintf(fid,'%f,',joints(3,2,t));
                fprintf(fid,'%f,',joints(8,1,t));fprintf(fid,'%f,',joints(8,2,t));
                fprintf(fid,'%f,',joints(4,1,t));fprintf(fid,'%f,',joints(4,2,t));
                fprintf(fid,'%f,',joints(9,1,t));fprintf(fid,'%f ',joints(9,2,t));
                fprintf(fid,'%d,%d,%d,%d,%d %d\n', 0,0,0,0,0,0);
            end
        end
    end
    fclose(fid);
end
