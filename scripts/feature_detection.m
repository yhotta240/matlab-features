init
featurePoint = 50;

% BRISK 特徴の検出
pointsBRISK = detectBRISKFeatures(grayImg); % BRISK 点を検出
figure; imshow(resizedImg); hold on;
plot(pointsBRISK.selectStrongest(featurePoint));
title('BRISK Features');

% FAST アルゴリズムを使用したコーナーの検出
cornersFAST = detectFASTFeatures(grayImg); 
figure; imshow(resizedImg); hold on;
plot(cornersFAST.selectStrongest(featurePoint));
title('FAST Features');

% Harris-Stephens アルゴリズムを使用したコーナー ポイントの検出
cornersHarris = detectHarrisFeatures(grayImg); 
figure; imshow(resizedImg); hold on;
plot(cornersHarris.selectStrongest(featurePoint));
title('Harris-Stephens Features');

% KAZE 特徴の検出
pointsKAZE = detectKAZEFeatures(grayImg); 
figure; imshow(resizedImg); hold on;
plot(pointsKAZE.selectStrongest(featurePoint));
title('KAZE Features');

% 最小固有値アルゴリズムを使用したコーナーの検出
cornersMinEigen = detectMinEigenFeatures(grayImg); 
figure; imshow(resizedImg); hold on;
plot(cornersMinEigen.selectStrongest(featurePoint));
title('MinEigen Features');

% MSER 特徴の検出
regionsMSER = detectMSERFeatures(grayImg); 
figure; imshow(resizedImg); hold on;
plot(regionsMSER);
title('MSER Features');

% ORB キーポイントの検出
pointsORB = detectORBFeatures(grayImg); 
figure; imshow(resizedImg); hold on;
plot(pointsORB.selectStrongest(featurePoint));
title('ORB Features');

% SIFT 特徴の検出 (使用できない)
pointsSIFT = detectSIFTFeatures(grayImg); 
figure; imshow(resizedImg); hold on;
plot(pointsSIFT.selectStrongest(featurePoint));
title('SIFT Features');

% SURF 特徴の検出
pointsSURF = detectSURFFeatures(grayImg); 
figure; imshow(resizedImg); hold on;
plot(pointsSURF.selectStrongest(featurePoint));
title('SURF Features');