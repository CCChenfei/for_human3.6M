clear;
addpath('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/');

for i = [1,5,6,7,8,9,11]
    load(['S',num2str(i),'/joints.mat']);
    for j = 2:16
        for k = 1:4
            gt = joints{4*(j-2)+k};
            [t1, t2, n] = size(gt);
            gt_new = zeros(t1,t2,n);
            load(['/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S',num2str(i),'/MySegmentsMat/ground_truth_bb/',num2str(i),num2str(j),num2str(k),'.mat'])
            for m = 1:n
                I = imread(['S',num2str(i),'/c',num2str(k),'_',num2str(j),'/im',num2str(m),'.jpg']);
                mask = Masks{m};
                [max_x,max_y] = find(mask==1);
                top_loc = [max_x(1) max_y(1)];
                [I_x, I_y, I_z]=size(I);
                Mask = zeros(I_x, I_y, 3);
                for i = 1:3
                    Mask(:,:,i) = double(mask);
                end
                I = Mask.*double(I);
                I(all(I==0,2),:,:)=[];
                I(:,:,all(I==0,1))=[];
                [row,col] = size(I);
                %I = imcrop(I,[gt(1,1,m)-256 gt(1,2,m)-256 512 512]);
                I = imresize(I,[256 256]);
                mkdir(['../Human3.6Mall/s',num2str(i),'/c',num2str(k),'_',num2str(j)])
                imwrite(I,['../Human3.6Mall/s',num2str(i),'/c',num2str(k),'_',num2str(j),'/im',num2str(m),'.jpg']);
                
                for t = 1:t1
                    gt_new(t,1,m) = (gt(t,1,m)-max_x)*256/row;
                    gt_new(t,2,m) = (gt(t,2,m)-max_y)*256/col;
                end
            end
            save(['../Human3.6Mall/s',num2str(i),'/c',num2str(k),'_',num2str(j),'/joints.mat'],'gt_new');
        end
    end
end
