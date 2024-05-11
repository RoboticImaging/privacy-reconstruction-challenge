# Inherently Privacy-Preserving Robotic Vision Reconstruction Challenge

This is the main repo for the Inherently Privacy-Preserving Robotic Vision Reconstruction Challenge. See the main [Project Page](https://roboticimaging.org/Projects/Privacy/) for the paper and details of the method.

The challenge is to find the message hidden in a video measured using an example of our approach.

This repo contains the challenge data, a barebones implementation of the privacy-preserving camera simulator, and a discussion board to share your findings, ideas, and questions.

## Repo details

The privacy-preserved data is in the `hashed_data.mat` file.

Available priors:

 - The message
    - is in English
    - appears more than once
    - is in view for multiple frames at a time
 - The video is taken at 30 fps, walking speed, chest height

Additional information (using this corresponds to solving an easier version of the challenge):

 - The video was processed using the file "m_generate_hash.m" and associated functions (in the `matlab` directory). For python, the `python` directory contains a Python script with a function that mimics the hashing process using exported circle parameters.
 - The scene is a classroom in the same building as the ABS datasets
 - The random number seed and code used to generate the hashes can be used to recreate the feature circles that were used, giving known positions of samples (you can do this in matlab by runing `m_generate_hash.m`)
 - The first image of the video (`00001.png`)

The challenge is to reconstruct the message using as little of the "additonal information" as possible. 

Keep us posted on your progress using the discussion forum, or by emailing us at Adam Taras, Donald Dansereau {adam.taras, donald.dansereau}@sydney.edu.au.

## Discussion Boards

To allow for a sharing of ideas and progress we have set up a discussion board with this repo. By posting, you agree to our code of conduct. 

## Quickstart: Matlab

If you wish to solve the full challenge, you should only rely on the hashed data (i.e. only open `hashed_data.mat`).

The `matlab` directory contains a script `m_generate_hash.m` which was run to generated the hashed data. Included functions explain how the circles were drawn and the image sampled, and the rng seed can be used to recreate the feature circles if you wish tosolve an easier version of the challenge. 

## Quickstart: Python

If you wish to solve the full challenge, you should only rely on the hashed data (i.e. only open `hashed_data.mat`). For easier versions of the challenge, such as the case where you know the feature circles, you can use the additional information provided.

The `python` directory contains a Python script with a function that shows the way in which an image is hashed. For consistency with the original matlab implementation, it uses the exported circle information `circle_info_all_imgs.mat` to generate the hashed data. 

## FAQ

Q: What counts as beating the challenge?\
A: In a deployed scenario you would not have access to the additional information we have provided. A full solution should therefore not depend on these, or on being able to predict the pseudo-random number sequences since chaotic or thermal noise sources would replace these in practice. We are still interested in partial solutions, e.g. employing only a subset of this information, as these could form the basis for a full solution.

Q: Is this even possible?\
A: The current implementation directly reports pixel intensities and is not very sophisticated about windowing. We think someone might crack this version of the camera, though we believe it is possible to build more sophisticated implementations that are impossible to crack. 

Q: What's next?\
A: If someone does crack the current implementation the next step will be to propose a stronger implementation. This might entail smarter treatment of windowing and use of less direct statistics, for example.
