#!/bin/bash

ffmpeg -y -i source/video_2048.mp4 -i source/02.DumboGetsMad-PlumyTale.ogg -map 0:v -map 1:a -c copy out/game.mp4

ffmpeg -y -i source/02.DumboGetsMad-PlumyTale.ogg -filter_complex "[0:a]aformat=channel_layouts=mono,showwaves=mode=cline:s=600x240:colors=white:scale=sqrt[v]; [v]drawtext=text='Some Text':fontcolor=white:fontsize=30:x=(w-text_w)/5:y=(h-text_h)/5:bordercolor=black:borderw=5[out]" -map "[out]" -map 0:a -b:a 360k -r:a 44100 out/visualized.mp4
