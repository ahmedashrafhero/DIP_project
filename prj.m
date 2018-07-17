prompt = 'Enter image name :  \n';

Im_Name = input(prompt);

prompt = 'Enter Error ratio : \n' ;

ErrorRatio = input(prompt);

Original_Im = imread(Im_Name);

Original_Im_Gray = rgb2gray(Original_Im);

NoisyImage = MakeSaltPepperNoise(Original_Im_Gray,ErrorRatio);

GaussianImage = MakeGaussianNoise(Original_Im_Gray,ErrorRatio);

subplot(1,3,1);imshow(Original_Im_Gray);title('Original Image');

subplot(1,3,2);imshow(NoisyImage);title('Salt and Pepper Noisy Image');

subplot(1,3,3);imshow(GaussianImage);title('Gaussian Image');

imwrite(NoisyImage,'Salt and Pepper Noisy Image.jpg');

imwrite(GaussianImage,'Gaussian Image.jpg');



