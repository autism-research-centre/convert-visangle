# convert-visangle

Converts Visual Angle to Pixel & Reverse

A pretty simple set of functions. Require the psychtoolbox.

Simply run:

```
visual_angle2pixel(visual_angle, screen_diagonal, distance, screen_no)
```

The function will take your screen number and use psychtoolbox to find the dimensions of that screen.
It will then use the physical dimensions you provide (`screen_diagonal` and `distance`) to work out the stimulus size in pixels.

You can do the same in reverse, although that's not as useful :)
