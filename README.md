# RickPad
*1×1 ortholinear mechanical macropad* <br><br>
The macropad firmware is based on QMK, so if you don't need a key that launches Never Gonna Give You Up by Rick Astley, 
you can easily reprogram it.<br>
![Image of the macropad](/Resources/rickpad.jpg "Image of the macropad")
## Why
I needed a macropad as a joke, but I found no single key macropad based on Pro Micro. I know using it for a single key 
is a waste, but I needed something quick and dirty. I'm sharing this for the little chance that someone out there may 
need this too.
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

The OS requirement is there because the macro is programmed to press meta key, then it opens Firefox, pastes the URL and 
presses Enter. Once you press Meta key on newer Windows or Gnome, you can start typing to search. The macro utilizes 
this exact feature. It may work on other systems, but I have not tested that.
## Assemlby guide
1. Print both the 3D files
1. Place the Cherry switch to the hole in the bigger 3D piece, switch facing up
1. Solder the switch to the Pro Micro pins B5 and D1, do not screw the pieces together yet, as you will have to reset 
the microcontroller
1. Download the rickroll firmware, or build your own
1. Flash the firmware, I use QMK Toolbox
    1. Before flashing, connect the controller to your computer, short RST and GND pins and THEN press the Flash button
1. Once you check everything is working, screw the pieces together
    1. I messed up the design, so the pieces fit together in one way only, you may have to fidget with it before finding the right orientation
1. Put on a keycap and enjoy your majestic new macro pad
## I wanna know more!
You can visit [my website](https://sch3fr.github.io/pages/Projects/rickpad.html) with more informations about this. 
There is even a demonstration video!

## 2023 ReRolled updates
I decided to rewrite the case files in OpenSCAD. At first I'll focus on rebuilding the case, changing the design a bit
(because I like flat surfaces more, not because I don't know how to make curves in OpenSCAD shut up).
Then I'll try to add some QOL features, such as sunken screws. I'll also try to find smaller board, since using whole
pro micro for this feels wasteful.
### Case 2.0
![Image of the new version](/Resources/rerolled.jpg "Image of the new version")
The base of the new design is done. It even saves some filament, since you can print the top case piece upside down,
eliminating the need for supports (ignore my bad first layer pls).