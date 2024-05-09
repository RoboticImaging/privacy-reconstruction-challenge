# Reconstruction Challenge
-------------------------

This repo contains a barebones implementation of our privacy-preserving simulator from our paper on [inherently privacy-preseving vision](https://www.sciencedirect.com/science/article/pii/S2666659624000052?via%3Dihub). We have run it on a video of a scene that contains a message that appears a few times. Your goal is to crack the code and find the message! This repo serves as both the location of the raw data and a public place to share your findings and collaborate with others (see Discusssions).

Our privacy-preserved data is in the `hashed_data.mat` file.

Available priors:
 - The message
    - is in English
    - appears more than once
    - is in view for multiple frames at a time
 - The scene is a classroom in the same building as the ABS datasets
 - The video is taken at 30 fps, walking speed, chest height
 - The video is processed using the file "m_generate_hash.m" and all associated functions

The challenge is to reconstruct the message using as little of the additonal information we have provided as a starting point. To give the attackers the best chance, we have provided the following additional information
 - the RNG seed and code used to generate the hashes can be used to recreate the feature circles that were used, giving known positions of samples (you can do this in matlab by runing `m_generate_hash.m`)
 - the first image of the video (`00001.png`)

If you do manage to break the codes, please do get in touch!

Adam Taras, Donald Dansereau
{adam.taras, donald.dansereau}@sydney.edu.au

## Discussion boards

To allow for a sharing of ideas and progress so far, we have set up a GitHub discussion board with this repo - use it to discuss progress so far or ask questions to us and the wider community! By posting, you agree to our code of conduct. 
