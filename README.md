# Use

1. Install kitty and gnuplot
2. Place the .gplot and .dat files in the same directory
3. $ gnuplot globekitty.gplot
4. Enjoy! (Optional)

![alt globe](https://github.com/ganzuul/globekitty/blob/main/Screenshot_20250324_221008.png?raw=true)

Higer resolution map files like in the image here:
https://gnuplotting.org/plotting-the-world-revisited/index.html

# Kitty window split and resize commands:

Ctrl+Shift+Enter
Ctrl+Shift+l
Ctrl+Shift+r

# Output a gif using 

globekittygif.gplot

# Optional Kitty startup to play your gif

GNU nano 8.7.1                                                            .config/kitty/session.kitty                                                                       

new_tab complex tab
layout splits
launch --var window=first bash -c "kitten icat --place 55x44@-8x1 ~/RotatingGlobe/globekitty450x310.gif; exec bash"
launch --location=hsplit --bias 68 --var window=second bash
focus_matching_window var:window=first
launch --location=vsplit --bias 75 --var window=third  bash
focus_matching_window var:window=second

