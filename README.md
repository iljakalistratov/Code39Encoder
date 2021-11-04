# Code39 Encoder in RISC-V

The goal of this project is to code a Code39-Encoder in RISC-V.


## Authors

Ilja Kalistratov

## Code39 Encoder Video

[![IMAGE ALT TEXT](http://img.youtube.com/vi/-h3eH4ubuno/0.jpg)](http://www.youtube.com/watch?v=-h3eH4ubuno "Video Title")

Replace -h3eH4ubuno in the this .md by your YT video

## Description

Code39 is a barcode format, in which each char of the alphabet has its own pattern, consisting out of five black lines and four white lines. Besides of that, there are two different widths of the lines, 3 fat lines & the rest thin lines.
Code39 has the "*" as start, as well as, stop sign, to give a barcode scanner the
opprotunity to know, where the word starts and where it ends.

The program takes an input and reads the string out of it. Then the processing and conversion of the string will start.

The whole program is written in RISC-V assembly language. It does not contain any
C-code or compiled C-code.

### How to run

Before you start the program, it is important to open the Bitmap Display and to configure it.
The configuration should look like this:

![alt text](bitmapdisplay.png "Bitmap Display Configuration")

If this is done, click on the "Connect to program" button.
Now you can assemble and run the main.asm.

Now if you started the program you should see an input window, which looks like this:

![alt text](input.png "Input Window")

This is the place, where to enter the string you want to convert into Code39.

If you entered a string, you can click on "OK". The program should start to encode it and show the converted Code39 format on the Bitmap Display.

## Files
Describe the content of each file of your application: e.g.

src/main.asm # Main "function" of the programm.

src/cesplib_rars.asm # configurations for RARS and the Bitmap Display of RARS

src/draw_pixel.asm # draw_pixel function of our lecture in Rechnerarchitektur, which draws a pixel with an given color & position on the Bitmap Display.

src/draw_black_line.asm # draws a vertical black line

src/draw_white_line.asm # draws a vertical white line

src/draw_fat_black_line.asm # draws a fat (3px) vertical black line

src/draw_fat_white_line.asm # draws a fat (3px) vertical white line

src/determine_length_of_string.asm # function to determine length of a string

src/encode.asm # function to convert every char of the string

src/process_star.asm # function to draw the Code39 Code of the char "*"

src/process_one.asm # function to draw the Code39 Code of the char "1"

src/process_two.asm # function to draw the Code39 Code of the char "2"

test/test1.asm - test9.asm # 9 unit tests for featureA


## Test
Screenshot that shows succedded (unit) tests 
