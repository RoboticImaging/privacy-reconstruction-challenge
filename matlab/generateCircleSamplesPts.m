function [xToSample, yToSample,circInfo] = generateCircleSamplesPts(imgSize, nCircles, radii, nSamples)
    % return points in an image to sample
    % nCircles - number of circles to do 
    % raii [min max] radii of the circles 
    % nSamples - the number of points in equal angle to sample the circle

    thetaSamples = linspace(0,2*pi, nSamples+1);
    thetaSamples = thetaSamples(1:end-1);

    xToSample = zeros(nCircles, nSamples);
    yToSample = zeros(nCircles, nSamples);

    circInfo = zeros(nCircles, 3);

    for i = 1:nCircles
        radius = radii(1) + (radii(2)-radii(1))*rand();
        centre = [rand()*imgSize(2); rand()*imgSize(1)];

        circInfo(i,1) = radius;
        circInfo(i,2:3) = centre;

        xToSample(i,:) = centre(1) + radius*cos(thetaSamples);
        yToSample(i,:) = centre(2) + radius*sin(thetaSamples);
    end

end