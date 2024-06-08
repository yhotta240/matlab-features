% init.m

clear
path = '../images/lena.png';
img = imread(path); % イメージの読み取り

% EXIF情報の読み込み
info = imfinfo(path);
if isfield(info, 'Orientation')
    orient = info.Orientation;
    switch orient
        case 1
            % 正しい向き
        case 2
            img = fliplr(img);
        case 3
            img = imrotate(img, 180);
        case 4
            img = flipud(img);
        case 5
            img = imrotate(fliplr(img), -90);
        case 6
            img = imrotate(img, -90);
        case 7
            img = imrotate(fliplr(img), 90);
        case 8
            img = imrotate(img, 90);
        otherwise
            % その他のケース
    end
end

targetWidth = 500;
scaleFactor = targetWidth / size(img, 2); % 幅を基準にスケールファクターを計算
resizedImg = imresize(img, scaleFactor);
% resizedImg = img;
grayImg = rgb2gray(resizedImg); % 画像をグレースケールに変換
