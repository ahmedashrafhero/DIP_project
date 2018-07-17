function curraptedimage = MakeGaussianNoise(InputImage,ErrorRatio)
D = im2double(InputImage);
r = randn(size(InputImage));
mul = ErrorRatio .* r;
curraptedimage = D + mul;
end
