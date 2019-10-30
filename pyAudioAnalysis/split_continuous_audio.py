#!/usr/bin/env python

import glob, os

for file in sorted(glob.glob("*.wav")):
    directory = f"{file[:-9]}-parts"

    os.mkdir(directory)

    # TODO: Update this path to match where your code lives
    # TODO: Update the minDuration and maxDuration args to match your requirements
    cmd_to_run = "python C:\\Users\\mastan\\Documents\\repos\\personal\\pyAudioAnalysis\\pyAudioAnalysis\\audioAnalysis.py silenceRemoval --input " + file + " --output " + directory + " --minDuration 5.0 --maxDuration 10.0 --smoothing 1.0 --weight 0.3"

    print("#"*40)
    print(file)
    print(f"directory is: {directory}")
    print(f"command is: {cmd_to_run}")

    os.system(cmd_to_run)