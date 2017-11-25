clear;
p = cell(7,15);
p1_2 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S1/MyPoseFeatures/D3_Positions/Directions.cdf');
p(1,1) = p1_2;
p1_3 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S1/MyPoseFeatures/D3_Positions/Discussion.cdf');
p(1,2) = p1_3;
p1_4 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S1/MyPoseFeatures/D3_Positions/Eating.cdf');
p(1,3) = p1_4;
p1_5 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S1/MyPoseFeatures/D3_Positions/Greeting.cdf');
p(1,4) = p1_5;
p1_6 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S1/MyPoseFeatures/D3_Positions/Phoning.cdf');
p(1,5) = p1_6;
p1_7 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S1/MyPoseFeatures/D3_Positions/Posing.cdf');
p(1,6) = p1_7;
p1_8 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S1/MyPoseFeatures/D3_Positions/Purchases.cdf');
p(1,7) = p1_8;
p1_9 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S1/MyPoseFeatures/D3_Positions/Sitting 2.cdf');
p(1,8) = p1_9;
p1_10 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S1/MyPoseFeatures/D3_Positions/SittingDown.cdf');
p(1,9) = p1_10;
p1_11 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S1/MyPoseFeatures/D3_Positions/Smoking.cdf');
p(1,10) = p1_11;
p1_12 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S1/MyPoseFeatures/D3_Positions/TakingPhoto.cdf');
p(1,11) = p1_12;
p1_13 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S1/MyPoseFeatures/D3_Positions/Waiting.cdf');
p(1,12) = p1_13;
p1_14 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S1/MyPoseFeatures/D3_Positions/Walking.cdf');
p(1,13) = p1_14;
p1_15 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S1/MyPoseFeatures/D3_Positions/WalkingDog.cdf');
p(1,14) = p1_15;
p1_16 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S1/MyPoseFeatures/D3_Positions/WalkTogether.cdf');
p(1,15) = p1_16;

p5_2 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S5/MyPoseFeatures/D3_Positions/Directions 2.cdf');
p(2,1) = p5_2;
p5_3 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S5/MyPoseFeatures/D3_Positions/Discussion 3.cdf');
p(2,2) = p5_3;
p5_4 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S5/MyPoseFeatures/D3_Positions/Eating.cdf');
p(2,3) = p5_4;
p5_5 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S5/MyPoseFeatures/D3_Positions/Greeting 2.cdf');
p(2,4) = p5_5;
p5_6 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S5/MyPoseFeatures/D3_Positions/Phoning.cdf');
p(2,5) = p5_6;
p5_7 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S5/MyPoseFeatures/D3_Positions/Posing.cdf');
p(2,6) = p5_7;
p5_8 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S5/MyPoseFeatures/D3_Positions/Purchases.cdf');
p(2,7) = p5_8;
p5_9 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S5/MyPoseFeatures/D3_Positions/Sitting.cdf');
p(2,8) = p5_9;
p5_10 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S5/MyPoseFeatures/D3_Positions/SittingDown 1.cdf');
p(2,9) = p5_10;
p5_11 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S5/MyPoseFeatures/D3_Positions/Smoking.cdf');
p(2,10) = p5_11;
p5_12 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S5/MyPoseFeatures/D3_Positions/Photo 2.cdf');
p(2,11) = p5_12;
p5_13 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S5/MyPoseFeatures/D3_Positions/Waiting 2.cdf');
p(2,12) = p5_13;
p5_14 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S5/MyPoseFeatures/D3_Positions/Walking.cdf');
p(2,13) = p5_14;
p5_15 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S5/MyPoseFeatures/D3_Positions/WalkDog.cdf');
p(2,14) = p5_15;
p5_16 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S5/MyPoseFeatures/D3_Positions/WalkTogether.cdf');
p(2,15) = p5_16;

p6_2 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S6/MyPoseFeatures/D3_Positions/Directions.cdf');
p(3,1) = p6_2;
p6_3 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S6/MyPoseFeatures/D3_Positions/Discussion.cdf');
p(3,2) = p6_3;
p6_4 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S6/MyPoseFeatures/D3_Positions/Eating 2.cdf');
p(3,3) = p6_4;
p6_5 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S6/MyPoseFeatures/D3_Positions/Greeting.cdf');
p(3,4) = p6_5;
p6_6 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S6/MyPoseFeatures/D3_Positions/Phoning.cdf');
p(3,5) = p6_6;
p6_7 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S6/MyPoseFeatures/D3_Positions/Posing.cdf');
p(3,6) = p6_7;
p6_8 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S6/MyPoseFeatures/D3_Positions/Purchases.cdf');
p(3,7) = p6_8;
p6_9 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S6/MyPoseFeatures/D3_Positions/Sitting 2.cdf');
p(3,8) = p6_9;
p6_10 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S6/MyPoseFeatures/D3_Positions/SittingDown.cdf');
p(3,9) = p6_10;
p6_11 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S6/MyPoseFeatures/D3_Positions/Smoking.cdf');
p(3,10) = p6_11;
p6_12 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S6/MyPoseFeatures/D3_Positions/Photo 1.cdf');
p(3,11) = p6_12;
p6_13 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S6/MyPoseFeatures/D3_Positions/Waiting.cdf');
p(3,12) = p6_13;
p6_14 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S6/MyPoseFeatures/D3_Positions/Walking.cdf');
p(3,13) = p6_14;
p6_15 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S6/MyPoseFeatures/D3_Positions/WalkDog.cdf');
p(3,14) = p6_15;
p6_16 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S6/MyPoseFeatures/D3_Positions/WalkTogether.cdf');
p(3,15) = p6_16;

p7_2 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S7/MyPoseFeatures/D3_Positions/Directions.cdf');
p(4,1) = p7_2;
p7_3 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S7/MyPoseFeatures/D3_Positions/Discussion.cdf');
p(4,2) = p7_3;
p7_4 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S7/MyPoseFeatures/D3_Positions/Eating.cdf');
p(4,3) = p7_4;
p7_5 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S7/MyPoseFeatures/D3_Positions/Greeting.cdf');
p(4,4) = p7_5;
p7_6 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S7/MyPoseFeatures/D3_Positions/Phoning.cdf');
p(4,5) = p7_6;
p7_7 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S7/MyPoseFeatures/D3_Positions/Posing.cdf');
p(4,6) = p7_7;
p7_8 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S7/MyPoseFeatures/D3_Positions/Purchases.cdf');
p(4,7) = p7_8;
p7_9 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S7/MyPoseFeatures/D3_Positions/Sitting.cdf');
p(4,8) = p7_9;
p7_10 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S7/MyPoseFeatures/D3_Positions/SittingDown 1.cdf');
p(4,9) = p7_10;
p7_11 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S7/MyPoseFeatures/D3_Positions/Smoking.cdf');
p(4,10) = p7_11;
p7_12 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S7/MyPoseFeatures/D3_Positions/Photo 1.cdf');
p(4,11) = p7_12;
p7_13 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S7/MyPoseFeatures/D3_Positions/Waiting 2.cdf');
p(4,12) = p7_13;
p7_14 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S7/MyPoseFeatures/D3_Positions/Walking 2.cdf');
p(4,13) = p7_14;
p7_15 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S7/MyPoseFeatures/D3_Positions/WalkDog.cdf');
p(4,14) = p7_15;
p7_16 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S7/MyPoseFeatures/D3_Positions/WalkTogether.cdf');
p(4,15) = p7_16;

p8_2 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S8/MyPoseFeatures/D3_Positions/Directions.cdf');
p(5,1) = p8_2;
p8_3 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S8/MyPoseFeatures/D3_Positions/Discussion.cdf');
p(5,2) = p8_3;
p8_4 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S8/MyPoseFeatures/D3_Positions/Eating.cdf');
p(5,3) = p8_4;
p8_5 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S8/MyPoseFeatures/D3_Positions/Greeting.cdf');
p(5,4) = p8_5;
p8_6 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S8/MyPoseFeatures/D3_Positions/Phoning.cdf');
p(5,5) = p8_6;
p8_7 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S8/MyPoseFeatures/D3_Positions/Posing.cdf');
p(5,6) = p8_7;
p8_8 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S8/MyPoseFeatures/D3_Positions/Purchases.cdf');
p(5,7) = p8_8;
p8_9 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S8/MyPoseFeatures/D3_Positions/Sitting.cdf');
p(5,8) = p8_9;
p8_10 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S8/MyPoseFeatures/D3_Positions/SittingDown 1.cdf');
p(5,9) = p8_10;
p8_11 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S8/MyPoseFeatures/D3_Positions/Smoking.cdf');
p(5,10) = p8_11;
p8_12 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S8/MyPoseFeatures/D3_Positions/Photo.cdf');
p(5,11) = p8_12;
p8_13 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S8/MyPoseFeatures/D3_Positions/Waiting.cdf');
p(5,12) = p8_13;
p8_14 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S8/MyPoseFeatures/D3_Positions/Walking.cdf');
p(5,13) = p8_14;
p8_15 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S8/MyPoseFeatures/D3_Positions/WalkDog.cdf');
p(5,14) = p8_15;
p8_16 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S8/MyPoseFeatures/D3_Positions/WalkTogether 2.cdf');
p(5,15) = p8_16;

p9_2 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S9/MyPoseFeatures/D3_Positions/Directions.cdf');
p(6,1) = p9_2;
p9_3 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S9/MyPoseFeatures/D3_Positions/Discussion 2.cdf');
p(6,2) = p9_3;
p9_4 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S9/MyPoseFeatures/D3_Positions/Eating.cdf');
p(6,3) = p9_4;
p9_5 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S9/MyPoseFeatures/D3_Positions/Greeting.cdf');
p(6,4) = p9_5;
p9_6 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S9/MyPoseFeatures/D3_Positions/Phoning.cdf');
p(6,5) = p9_6;
p9_7 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S9/MyPoseFeatures/D3_Positions/Posing.cdf');
p(6,6) = p9_7;
p9_8 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S9/MyPoseFeatures/D3_Positions/Purchases.cdf');
p(6,7) = p9_8;
p9_9 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S9/MyPoseFeatures/D3_Positions/Sitting.cdf');
p(6,8) = p9_9;
p9_10 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S9/MyPoseFeatures/D3_Positions/SittingDown 1.cdf');
p(6,9) = p9_10;
p9_11 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S9/MyPoseFeatures/D3_Positions/Smoking.cdf');
p(6,10) = p9_11;
p9_12 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S9/MyPoseFeatures/D3_Positions/Photo.cdf');
p(6,11) = p9_12;
p9_13 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S9/MyPoseFeatures/D3_Positions/Waiting.cdf');
p(6,12) = p9_13;
p9_14 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S9/MyPoseFeatures/D3_Positions/Walking.cdf');
p(6,13) = p9_14;
p9_15 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S9/MyPoseFeatures/D3_Positions/WalkDog.cdf');
p(6,14) = p9_15;
p9_16 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S9/MyPoseFeatures/D3_Positions/WalkTogether.cdf');
p(6,15) = p9_16;

p11_2 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S11/MyPoseFeatures/D3_Positions/Directions 1.cdf');
p(7,1) = p11_2;
p11_3 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S11/MyPoseFeatures/D3_Positions/Discussion 2.cdf');
p(7,2) = p11_3;
p11_4 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S11/MyPoseFeatures/D3_Positions/Eating.cdf');
p(7,3) = p11_4;
p11_5 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S11/MyPoseFeatures/D3_Positions/Greeting.cdf');
p(7,4) = p11_5;
p11_6 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S11/MyPoseFeatures/D3_Positions/Phoning 2.cdf');
p(7,5) = p11_6;
p11_7 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S11/MyPoseFeatures/D3_Positions/Posing.cdf');
p(7,6) = p11_7;
p11_8 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S11/MyPoseFeatures/D3_Positions/Purchases.cdf');
p(7,7) = p11_8;
p11_9 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S11/MyPoseFeatures/D3_Positions/Sitting.cdf');
p(7,8) = p11_9;
p11_10 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S11/MyPoseFeatures/D3_Positions/SittingDown 1.cdf');
p(7,9) = p11_10;
p11_11 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S11/MyPoseFeatures/D3_Positions/Smoking.cdf');
p(7,10) = p11_11;
p11_12 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S11/MyPoseFeatures/D3_Positions/Photo.cdf');
p(7,11) = p11_12;
p11_13 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S11/MyPoseFeatures/D3_Positions/Waiting.cdf');
p(7,12) = p11_13;
p11_14 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S11/MyPoseFeatures/D3_Positions/Walking.cdf');
p(7,13) = p11_14;
p11_15 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S11/MyPoseFeatures/D3_Positions/WalkDog.cdf');
p(7,14) = p11_15;
p11_16 = cdfread('/home/chenf/Documents/pose_estimation/data/human3.6M_ori/S11/MyPoseFeatures/D3_Positions/WalkTogether.cdf');
p(7,15) = p11_16;



top_left_3D = [2000,2000,2000];
bottom_right_3D = [0,0,0];
joints_3D = cell(7,15);
for s = 1:7
    for a = 1:15
        position = p(s,a);
        pos = position{1};
        [m,~] = size(pos);
        joints = zeros(32,3,m);
        for i = 1:m
            for j = 1:32
                joints(j,1,i) = pos(i,3*j-2);
                joints(j,2,i) = pos(i,3*j-1);
                joints(j,3,i) = pos(i,3*j);
                if joints(j,1,i)<top_left_3D(1)
                    top_left_3D(1)=joints(j,1,i);
                end
                if joints(j,2,i)<top_left_3D(2)
                    top_left_3D(2)=joints(j,2,i);
                end
                if joints(j,3,i)<top_left_3D(3)
                    top_left_3D(3)=joints(j,3,i);
                end
                if joints(j,1,i)>bottom_right_3D(1)
                    bottom_right_3D(1)=joints(j,1,i);
                end
                if joints(j,2,i)>bottom_right_3D(2)
                    bottom_right_3D(2)=joints(j,2,i);
                end
                if joints(j,3,i)>bottom_right_3D(3)
                    bottom_right_3D(3)=joints(j,3,i);
                end
            end
        end
        joints_3D{s,a} = joints;
    end
end

