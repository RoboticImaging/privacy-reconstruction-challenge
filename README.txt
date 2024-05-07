Reconstruction Challenge
-------------------------

This folder contains an implementation of our privacy preserving simulator. We have run it on a video of a scene that contains a message that appears a few times.


Available priors:
 - The message
    - is in English
    - appears more than once
    - is in view for multiple frames at a time
 - The scene is a classroom in the same building as the ABS datasets
 - The video is taken at 30 fps, walking speed, chest height
 - The video is processed using the file "m_generate_hash.m" and all associated functions

The challenge is to reconstruct the message using as little of the additonal information we have provided as a starting point. To give the attackers the best chance, we have provided the following additional information
 - the RNG seed and code used to generate the hashes can be used to recreate the feature circles that were used, giving known positions of samples
 - the first image of the video

If you do manage to break the codes, please do get in touch!

Adam Taras, Donald Dansereau
{adam.taras, donald.dansereau}@sydney.edu.au


