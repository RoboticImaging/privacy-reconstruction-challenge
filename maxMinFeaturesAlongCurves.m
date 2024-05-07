function [features, metrics] = maxMinFeaturesAlongCurves(img, xToSample,yToSample, isNormalise)
    % find max and min along an arbitrary line through the image
    arguments
        img (:,:) double
        xToSample (:,:) double
        yToSample (:,:) double
        isNormalise = false
    end


    img = double(img);


    interpVals = interp2(img,xToSample,yToSample);
    

    if isNormalise
        features = [max(interpVals,[],2), min(interpVals,[],2)]/mean(img,'all');
        metrics = [max(interpVals,[],2) - min(interpVals,[],2)]/mean(img,"all");
    else
        features = [max(interpVals,[],2), min(interpVals,[],2)];
        metrics = [max(interpVals,[],2) - min(interpVals,[],2)];
    end

    if any(isnan(features),'all')
        features
    end
end