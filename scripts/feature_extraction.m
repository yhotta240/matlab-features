% 特徴量の抽出
init
featurePoint = 50;


% 関心点記述子の抽出
[featuresBRISK, valid_pointsBRISK] = extractFeatures(grayImg, pointsBRISK);
figure; imshow(resizedImg); hold on;
plot(valid_pointsBRISK.selectStrongest(20));
title('BRISK Features Descriptors');

% LBP 特徴の抽出
lbpFeatures = extractLBPFeatures(grayImg);
figure; bar(lbpFeatures);
title('LBP Features');

% HOG 特徴の抽出
[hogFeatures, visualization] = extractHOGFeatures(grayImg);
figure; imshow(resizedImg); hold on;
plot(visualization);
title('HOG Features');