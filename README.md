# Limited (16－235) → Full (0－255) RGB Range Shader:
You got a Blu-ray/DVD or video file that was annoyingly rendered in the limited colour range? 
Everything all grey as a result? 
This soloution will provide a solution.

I created this after one of my Blu-rays were locked at the limited colour range; thankfully I knew how to make a shader to reverse this. PlayerFab supports Blu-ray playback with shaders.

This shader converts the limited colour range (16-235) to the full colour range (0-255).

This shader was created for PlayerFab but it should also work within MPC-HC aswell as other video players that support shaders such as Anime4K.

# How to import shader to use in PlayerFab:
1 - Follow the directory "C:\Program Files\DVDFab\Player 6\system\shaders\fx".

2 - Change 'C:' to whichever letter your drive is that contains PlayerFab.

3 - Unzip the file and place the .fx file inside of the folder.

4 - During video/disc playback right click the video and go to the 'Shaders' tab and find the installed solution.

# Comparison:
Original 16-235 (Without solution):
![LimitedColourRangeExample](https://user-images.githubusercontent.com/94736474/191021167-9046426d-e6f2-400b-9028-b2965870e9f1.png)

Modified 0-255 (With solution):
![FullColourRangeExample](https://user-images.githubusercontent.com/94736474/191021292-3cd5a13f-3904-48f2-b5f7-9460e5b0f8db.png)

Original 16-235 (Without solution):
![LimitedColourRangeExample2](https://user-images.githubusercontent.com/94736474/191025211-e6c5d077-f699-4585-9e47-f9017895fa85.png)

Modified 0-255 (With solution):
![FullColourRangeExample2](https://user-images.githubusercontent.com/94736474/191025286-0d93f37c-b74c-4f99-b615-36ef80f396e0.png)

Original 16-235 (Without solution):
![LimitedColourRangeExample3](https://user-images.githubusercontent.com/94736474/191028575-52b8533e-9155-46c3-adbf-3ad034fdc578.png)

Modified 0-255 (With solution):
![FullColourRangeExample3](https://user-images.githubusercontent.com/94736474/191028590-cc7cb9c0-75ae-404b-8d4d-10e644bd314b.png)

Original 16-235 (Without solution):
![LimitedColourRangeExample4](https://user-images.githubusercontent.com/94736474/191028605-48766364-6965-48ba-b46e-1744aa609dc8.png)

Modified 0-255 (With solution):
![FullColourRangeExample4](https://user-images.githubusercontent.com/94736474/191028627-28500dd8-c9af-44ba-b771-b16d1f60ae0e.png)

These screenshots were taken from the Blu-ray playback of "30歳まで童貞だと魔法使いになれるらしい".



Note: This is modified code from an unkown source and I didn't make this from scratch.
