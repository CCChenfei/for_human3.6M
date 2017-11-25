clear;
addpath('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/');
top_left = [1000,1000;1000,1000;1000,1000;1000,1000];
bottom_right = zeros(4,2);
for k = 1:4
    for i = [1,5,6,7,8,9,11]
         for j = 2:16
             load(['/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S',num2str(i),'/MySegmentsMat/ground_truth_bb/',num2str(i),num2str(j),num2str(k),'.mat'])
             [~,n] = size(Masks);
             for m = 1:n
                mask = Masks{m};
                [max_x,max_y] = find(mask==1);
                top_loc = [max_y(1) max_x(1)];
                [num, num_] = size(max_x);
                bottom_loc = [max_y(num) max_x(num) ];
                if top_left(k,1)>top_loc(1)
                    top_left(k,1) = top_loc(1);
                end
                if top_left(k,2)>top_loc(2)
                    top_left(k,2) = top_loc(2);
                end
                if bottom_right(k,1)<bottom_loc(1)
                    bottom_right(k,1) = bottom_loc(1);
                end
                if bottom_right(k,2)<bottom_loc(2)
                    bottom_right(k,2) = bottom_loc(2);
                end
                
                
             end
         end
    end
end


scale = zeros(4,2);
for k = 1:4
     pad_x = bottom_right(k,1)-top_left(k,1);
     pad_y = bottom_right(k,2)-top_left(k,2); 
    for i = [1,5,6,7,8,9,11]
        load(['S',num2str(i),'/joints.mat']);
        for j = 2:16           
            gt = joints{4*(j-2)+k};
            [t1, t2, n] = size(gt);
            gt_new = zeros(t1,t2,n);
%             load(['/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S',num2str(i),'/MySegmentsMat/ground_truth_bb/',num2str(i),num2str(j),num2str(k),'.mat'])
            for m = 1:n
                I = imread(['S',num2str(i),'/c',num2str(k),'_',num2str(j),'/im',num2str(m),'.jpg']);
                
                if pad_x>pad_y
                    if rem(pad_x-pad_y,2)==0
                        I = imcrop(I,[top_left(k,1) top_left(k,2)-(pad_x-pad_y)/2 pad_x pad_x]);
                    else
                        I = imcrop(I,[top_left(k,1) top_left(k,2)-fix((pad_x-pad_y)/2) pad_x pad_x]);
                    end
                    [row,col,dim] = size(I);
                    for t = 1:t1
                        gt_new(t,1,m) = (gt(t,1,m)-top_left(k,1))*256/row;
                        gt_new(t,2,m) = (gt(t,2,m)-top_left(k,2)+fix((pad_x-pad_y)/2))*256/col;
                    end
                    scale(k,1) = 256/pad_x;
                    scale(k,2) = 256/pad_x;
                else
                    if rem(pad_y-pad_x,2)==0
                        I = imcrop(I,[top_left(k,1)-(pad_y-pad_x)/2 top_left(k,2) pad_y pad_y]);
                    else
                        I = imcrop(I,[top_left(k,1)-fix((pad_y-pad_x)/2) top_left(k,2) pad_y pad_y]);
                    end
                    [row,col,dim] = size(I);
                    for t = 1:t1
                        gt_new(t,1,m) = (gt(t,1,m)-top_left(k,1)+fix((pad_y-pad_x)/2))*256/row;
                        gt_new(t,2,m) = (gt(t,2,m)-top_left(k,2))*256/col;
                    end
                    scale(k,1) = 256/pad_y;
                    scale(k,2) = 256/pad_y;
                end
                
                I = imresize(I,[256 256]);
                mkdir(['../multiviewH36m/s',num2str(i),'/c',num2str(k),'_',num2str(j)])
                imwrite(I,['../multiviewH36m/s',num2str(i),'/c',num2str(k),'_',num2str(j),'/im',num2str(m),'.jpg']);
                
            end
            save(['../multiviewH36m/s',num2str(i),'/c',num2str(k),'_',num2str(j),'/joints.mat'],'gt_new');
        end
    end
end
