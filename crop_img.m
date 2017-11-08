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
%                 imshow(I);
                
%                 for h = 1:32
%                     plot(gt(h,1,1),gt(h,2,1),'r.');
%                     hold on;
%                 end
                
                
                mask = Masks{m};
                [max_x,max_y] = find(mask==1);
                top_loc = [max_y(1) max_x(1)];
                [num, num_] = size(max_x);
                bottom_loc = [max_y(num) max_x(num) ];
%                 [I_x, I_y, I_z]=size(I);
%                 Mask = zeros(I_x, I_y, 3);
%                 for i = 1:3
%                     Mask(:,:,i) = double(mask);
%                 end
%                 I = Mask.*double(I);
%                 I(all(I==0,2),:,:)=[];
%                 I(:,:,all(I==0,1))=[];
                pad_x = bottom_loc(1)-top_loc(1);
                pad_y = bottom_loc(2)-top_loc(2);
               % I = imcrop(I,[top_loc(1) top_loc(2) pad_x pad_y]);
                if pad_x>pad_y
                    if rem(pad_x-pad_y,2)==0
                        %I = padarray(I,[(pad_x-pad_y)/2 0]);
                        I = imcrop(I,[top_loc(1) top_loc(2)-(pad_x-pad_y)/2 pad_x pad_x]);
                    else
                        I = imcrop(I,[top_loc(1) top_loc(2)-fix((pad_x-pad_y)/2) pad_x pad_x]);
%                         I = padarray(I,[fix((pad_x-pad_y)/2) 0],'pre');
%                         I = padarray(I,[fix((pad_x-pad_y)/2)+1 0],'post');
                    end
                    [row,col,dim] = size(I);
                    for t = 1:t1
                        gt_new(t,1,m) = (gt(t,1,m)-top_loc(1))*256/row;
                        gt_new(t,2,m) = (gt(t,2,m)-top_loc(2)+fix((pad_x-pad_y)/2))*256/col;
                    end
                else
                    if rem(pad_y-pad_x,2)==0
                        I = imcrop(I,[top_loc(1)-(pad_y-pad_x)/2 top_loc(2) pad_y pad_y]);
%                         I = padarray(I,[0 (pad_y-pad_x)/2]);
                    else
                        I = imcrop(I,[top_loc(1)-fix((pad_y-pad_x)/2) top_loc(2) pad_y pad_y]);
%                         I = padarray(I,[0 fix((pad_y-pad_x)/2)],'pre');
%                         I = padarray(I,[0 fix((pad_y-pad_x)/2)+1],'post');
                    end
                    [row,col,dim] = size(I);
                    for t = 1:t1
                        gt_new(t,1,m) = (gt(t,1,m)-top_loc(1)+fix((pad_y-pad_x)/2))*256/row;
                        gt_new(t,2,m) = (gt(t,2,m)-top_loc(2))*256/col;
                    end
                end
 
                I = imresize(I,[256 256]);
%                 figure;imshow(I);
                mkdir(['../Human3.6M/s',num2str(i),'/c',num2str(k),'_',num2str(j)])
                imwrite(I,['../Human3.6M/s',num2str(i),'/c',num2str(k),'_',num2str(j),'/im',num2str(m),'.jpg']);
                
            end
            save(['../Human3.6M/s',num2str(i),'/c',num2str(k),'_',num2str(j),'/joints.mat'],'gt_new');
        end
    end
end
