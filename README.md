# Code39 Encoder in RISC-V

The goal of this project is to code a Code39-Encoder in RISC-V.


## Authors

Ilja Kalistratov

## Code39 Encoder Video

[![IMAGE ALT TEXT](http://img.youtube.com/vi/-h3eH4ubuno/0.jpg)](http://www.youtube.com/watch?v=-h3eH4ubuno "Video Title")

Replace -h3eH4ubuno in the this .md by your YT video

## Description

Code39 is a barcode format, in which each char of the alphabet has its own pattern, consisting out of five black lines and four white lines. Besides of that, there are two different widths of the lines, 3 fat lines & the rest are thin lines.
Code39 has the "*" as start, as well as, stop sign, to give a barcode scanner the
opprotunity to know, where the word starts and where it ends.

The program takes an input and reads the string out of it. Then the processing and conversion of the string will start.

The whole program is written in RISC-V assembly language. It does not contain any
C-code or compiled C-code.

### How to run

Open up the main.asm file in RARS.

Before you start the program, it is important to open the Bitmap Display and to configure it.
The configuration should look like this:

![Bitmap Display](https://raw.githubusercontent.com/iljakalistratov/Code39Encoder/main/pictures/bitmapdisplay.PNG "Bitmap Display")

If this is done, click on the "Connect to program" button.
Now you can assemble and run the main.asm.

Now if you started the program you should see an input window, which looks like this:

![Input Window](https://raw.githubusercontent.com/iljakalistratov/Code39Encoder/main/pictures/input.PNG "Input Window")

This is the place, where to enter the string you want to convert into Code39.

If you entered a string, you can click on "OK". The program should start to encode it and show the converted Code39 format on the Bitmap Display.

### Restrictions
- Due to lack of time, for now only strings, containing numbers from "1" to "9" are working.
- String vaildation is not implemented.

## Files
Describe the content of each file of your application: e.g.

src/main.asm # Main function of the programm.

src/cesplib_rars.asm # configurations for RARS and the Bitmap Display of RARS

src/draw_pixel.asm # draw_pixel function of our lecture in Rechnerarchitektur, which draws a pixel with an given color & position on the Bitmap Display.

src/draw_line.asm # function, which makes it possible to draw lines in different colors

src/draw_black_line.asm # draws a vertical black line

src/draw_white_line.asm # draws a vertical white line

src/draw_fat_black_line.asm # draws a fat (3px) vertical black line

src/draw_fat_white_line.asm # draws a fat (3px) vertical white line

src/read_input.asm # opens the input dialog

src/analyze_input.asm # function to process the input

src/read_input.asm # opens the input dialog

src/encode.asm # function to convert every char of the string and draw it on the Bitmap Display

src/create_pattern.asm # the draw function of every char in the alphabet is handled in this file

src/print_input.asm # function that prints the size and the content of the input string in the console -> this function was only used for debugging

## Test
Due to lack of time, there are no unit tests in this project.
