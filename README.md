## Keep all the Code files present in this directory and the sp.wav sound file present in the main repository directory in the same file.

# MINT Principle - 2 input 1 output - Randomly generated acoustics

The code for randomly generated room acoustics filter and inversing using MINT principle is present in the file named Two_Input_One_Output_MINT.m, present in the Code folder.

This code generates 2 random impulse responses for room acoustics and computes their inverse using the MINT principle and shows the obtained values.

# MINT Principle - 2 input 1 output - User inputted acoustics

The code for user inputted room acoustics filter and inversing using MINT principle is present in the file named MINT_User_Input_Acoustics.m, present in the Code folder.

This code accepts a 2 impulse responses for room acoustics of any user specified lengths, and computes its inverse using the MINT principle and shows the obtained values.

# LSE Method - 1 input 1 output

The code for the LSE method of inverse filtering of rooom acoustics is present in the file named LSE_method.m, present in the Code folder.

This code generates only one random impulse response for room acoustics, and uses the conventional LSE(Least Squares Error) method to compute the approximate inverse of room 
acoustics and shows the obtained values.

# Plots showing the working

The code for this present in 2 files named Working.m and Working_LSE_MINT.m, present in the Code folder.

The code Working.m shows the working of the MINT principle on randomly generated room acoustics, and plots the original signal, output signal after distorting and inversing, and 
the error between output and original signals, for inversing by the MINT method. The code Working_LSE_MINT.m shows the plots for differentiating between conventional LSE method and the proposed MINT principle. It plots the original signal, output signal after distorting and inversing, and the error between output and original signals for inversing using MINT principle and LSE method. Both the codes are run for different input signals (original signals) like unit step, ramp, sine wave, and random numbers input, and give 4 different figures with the above mentioned plots as subplots.

# Testing audio files

## The file sp.wav present in the main repository directory and the file Test_Audio.m present in Code folder must be placed in the same folder.
The code for this experiment is in the file named Test_Audio.m, present in the Code folder.

This code uses the sound file sp.wav present in the main repository directory and an inbuilt MATLAB sound file (train.mat) to test the working of the inversing methods. The code 
firstly plays the original sound, then plays the sound distorted by randomly generated room acoustics, and further computes the inverses of the room acoustics, and then plays the new sound. Observations are that the first and the last sounds sound alike. This experiment is performed first on sp.wav sound file, and then on inbuilt MATLAB sound file 
(train.mat).

## Caution : Reduce the volume before running this code.
