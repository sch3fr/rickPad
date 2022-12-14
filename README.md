# RickPad
*1×1 ortholinear mechanical macropad* <br><br>
The macropad firmware is based on QMK, so if you don't need a key that launches Never Gonna Give You Up by Rick Astley, you can easily reprogram it.<br>
![Image of the macropad](/Resources/rickpad.jpg "Image of the macropad")
## Why
I needed a macropad as a joke, but I found no single key macropad based on Pro Micro. I know using it for a single key is a waste, 
but I needed something quick and dirty. I'm sharing this for the little chance that someone out there may need this too.
## Bill of materials
* 1× Cherry MX style mechanical switch
* 1× keycap
* 1× Sparkfun Pro Micro
* 4 cm of wire
* 4 M3 screws, 6 mm long
* Micro USB cable
* Less than 5 m of 3D printer filament, I used PLA
* Something to short ground and reset pins on the Pro Micro when flashing the firmware
## Requirements
In case you do end up using my firmware, you must meet the following requirements:
* Windows 10/11 or Linux With Gnome 40+
* System language set to English
* Latest version of Mozilla Firefox

The OS requirement is there because the macro is programmed to press meta key, then it opens Firefox, pastes the URL and presses Enter. Once you press 
Meta key on newer Windows or Gnome, you can start typing to search. The macro utilizes this exact feature. It may work on other systems, but I have not tested that.
## Assemlby guide
1. Print both the 3D files
1. Place the Cherry switch to the hole in the bigger 3D piece, switch facing up
1. Solder the switch to the Pro Micro pins B5 and D1, do not screw the pieces together yet, as you will have to reset the microcontroller
1. Download the rickroll firmware, or build your own
1. Flash the firmware, I use QMK Toolbox
    1. Before flashing, connect the controller to your computer, short RST and GND pins and THEN press the Flash button
1. Once you check everything is working, screw the pieces together
    1. I messed up the design, so the pieces fit together in one way only, you may have to fidget with it before finding the right orientation
1. Put on a keycap and enjoy your majestic new macro pad
## I wanna know more!
You can visit [my website](https://sch3fr.github.io/pages/Projects/rickpad.html) with more informations about this. There is even a demonstration video!