function [features, metrics, circInfo] = maxMinFeaturesAlongUniqueRandCirc(img, nCircles, radii, nSample, isNormalise)
    arguments
        img (:,:) double
        nCircles (1,1) double
        radii (1,2) double
        nSample (1,1) double
        isNormalise = false
    end

    [xToSample, yToSample, circInfo] = generateCircleSamplesPts(size(img), nCircles, radii, nSample);
    [features, metrics] = maxMinFeaturesAlongCurves(img, xToSample,yToSample, isNormalise);
end
