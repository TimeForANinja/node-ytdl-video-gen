# node-ytdl-video-gen

## source audio
### references:
the route the videos where discovered and you might discover other videos
* [Creative Commons > Legal Music For Videos](https://creativecommons.org/about/program-areas/arts-culture/arts-culture-resources/legalmusicforvideos/)
* [Internet Archive > Netlabels Collection](https://archive.org/details/netlabels)
* [Internet Archive > Netlabels Collection > Bad Panda Records](https://archive.org/details/bad-panda)

### choosen audio
02. Dumbo Gets Mad - Plumy Tale
Album: Dumbo Gets Mad - Eclectic Prawn
The Album is Published under [Attribution-Noncommercial-Share Alike 3.0](http://creativecommons.org/licenses/by-nc-sa/3.0/)
https://archive.org/details/badpanda049/02.DumboGetsMad-PlumyTale.mp3

## source video
Self-Recorded gameplay of [2048](https://github.com/gabrielecirulli/2048)
A game published under [MIT License](https://opensource.org/licenses/MIT)

Image Post-Processing done using ffmpeg
```bash
ffmpeg -i video_2048.mp4 -an -filter:v "crop=720:900:0:160" -c h264 -preset slower video_crop.mp4
```

## Audio Visualization
Also done using ffmpeg:
```bash
ffmpeg -i INPUT.wav -filter_complex "[0:a]showwaves=mode=line:s=hd480:colors=White[v]" -map "[v]" -map 0:a -pix_fmt yuv420p -b:a 360k -r:a 44100  OUTPUT.mp4
```
