
function Currapted_image = MakeSaltPepperNoise(InputImage,ErrorRatio)
    F = round(rand());
    N = round(ErrorRatio * numel(InputImage));
    R = randi([1 numel(InputImage)],1,N);

    for i = 1 : numel(R)
        if F == 0 
            InputImage(R(i)) = 0;
        else
            InputImage(R(i)) = 255;
        end
        F = round(rand());
    end

    Currapted_image = im2uint8(InputImage);
end
    