# Code39 Encoder in RISC-V

The goal of this project is to code a Code39-Encoder in RISC-V.


## Authors

Ilja Kalistratov

## Demo Video

[![IMAGE ALT TEXT](http://img.youtube.com/vi/-h3eH4ubuno/0.jpg)](http://www.youtube.com/watch?v=-h3eH4ubuno "Video Title")

Replace -h3eH4ubuno in the this .md by your YT video

## Description

The whole programm is written in RISC-V assembly language.



### How to run

First you need to define a string, which you want to be converted into Code39, in main.asm. Don't forget to safe this file after you edited the string.
This is also the file, which needs to be assembled and started to start the conversion.
But before you start the programm, it is important to open the Bitmap Display and to configure it.
The configuration should look like this:

![alt text](/pictures/bitmapdisplay.png "Bitmap Display Configuration")

If this is done, click on the "Connect to programm" button.
Now you can assemble and run the main.asm.

## Files
Describe the content of each file of your application: e.g.

src/main.asm # Main "function" of the programm.

src/cesplib_rars.asm # configurations for RARS and the Bitmap Display of RARS

src/draw_pixel.asm # draw_pixel function of our lecture in Rechnerarchitektur, which draws a pixel with an given color & position on the Bitmap Display.

src/draw_black_line.asm # draws a vertical black line at a given x-position

src/draw_white_line.asm # draws a vertical white line at a given x-position

test/test1.asm - test9.asm # 9 unit tests for featureA


## Test
Screenshot that shows succedded (unit) tests 
