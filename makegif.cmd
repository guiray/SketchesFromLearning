:: Make a GIF with ffmpeg from tiff sequence
:: -r = framerate (1 on line 5 and 2 on line 8) 	max_colors = (line 5) 	scale = pixel size (line 8)

:: Make a palette for GIF.
ffmpeg.exe -f image2 -r 30 -start_number 1 -i screen-%%04d.tif -y -vf palettegen=max_colors=24 palette.png

:: Make a GIF with the palette.
ffmpeg.exe -f image2 -r 30 -start_number 1 -i screen-%%04d.tif -y -i palette.png -filter_complex "scale=500:-1:flags=lanczos[x];[x][1:v]paletteuse" -r 30 anim.gif