clear;
addpath('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/');

for i = [1,5,6,7,8,9,11]
    load(['S',num2str(i),'/joints.mat']);
    for j = 2:16
        for k = 1:4
            gt = joints{4*(j-2)+k};
            [t1, t2, n] = size(gt);
            gt_new = zeros(t1,t2,n);
            for m = 1:n
                I = imread(['S',num2str(i),'/c',num2str(k),'_',num2str(j),'/im',num2str(m),'.jpg']);
                
                I = imcrop(I,[gt(1,1,m)-256 gt(1,2,m)-256 512 512]);
                I = imresize(I,[256 256]);
                imwrite(I,['../Human3.6M/s',num2str(i),'/c',num2str(k),'_',num2str(j),'/im',num2str(m),'.jpg']);
                
                for t = 1:t1
                    gt_new(t,1,m) = (gt(t,1,m)-gt(1,1,m)+256)/2;
                    gt_new(t,2,m) = (gt(t,2,m)-gt(1,2,m)+256)/2;
                end
            end
            save(['../Human3.6M/s',num2str(i),'/c',num2str(k),'_',num2str(j),'/joints.mat'],'gt_new');
        end
    end
end
