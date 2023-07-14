# easter_rabbit
[easter_rabbit](https://github.com/witabix33/easter_rabbit) is a little 3D-printed rabbit that can be planted in a flowerpot. The rabbit is based on a simple coloring drawing, modified to include a hole for the support foot. The foot can be a simple Chinese food chopstick.

![easter_rabbit_x600](https://github.com/witabix33/easter_rabbit/images/aster_rabbit_x600.jpg)

disclaimer : it's a quick little project that was coded in a single evening. It's not perfect. It should be used as a Proof Of Concept or when needing exactly this kind of 3D printed part.

# Files description
| File name | Usage |
| --------- | ----- |
| CE3E3V2_easter_rabbit.gcod | This is a GCOD sliced file for Creality Ended 3 v2 3D printer. You may have a different 3D printer. Use the STL file instead to produce your own GCOD file |
| easter_rabbit.stl | This is a STL file that can be used as input for your slicer. |
| easter_rabbit.scad | This is a SCAD (Open Scad) file that describes the model. This file should be adapted for your own needs. You may use Openscad software (link below). As the SCAD file imports a PNG file, you may use both files in the same directory. |
| lapin.png | This is a PNG file (picture) that is imported in the open scad file. This file should be adapted for your own needs. You may use Openscad software (link below). As the SCAD file imports a PNG file, you may use both files in the same directory. |

# Changing parameters in SCAD file
Reading and understanding OpenScad SCAD language is required to use this section.
The SCAD format is a parametric 3D description file format. SCAD files are text files, but you'd better edit and change them in a sofware like OpenScad (link below).  Open Scad alowso provide their own tutorials.

The following parameters migth be changed to adapt the model to your need.
However, this model has not been designed to be easily parameterized. The variables described below are for information only and should be considered as constants.
| Parameter | Usage and impacts |
| --------- | ----------------- |
| lapin_png | Refers to the PNG file "lapin.png". You may change picture file name here. When changing dimension or picture content, you may also have to adapt in lapin_part() module |
| lapin_couleur | Color for rabbit. Not tested as my printed is mono color |
| lapin_echelle | Picture scale. Initial value was 0.30=30%. As 1=100%. Remember : When changing dimension or picture content, you may also have to adapt in lapin_part() module |
| larg_baguette | Le lapin se fixe sur une baguette de nourriture chinoise. Cette valeur donne la largeur de la baguette ... et donc du trou à faire. Initial value was 7 = 7mm mm | 
| base_hauteur_oeil | Rabbit eye needs a support. This gives the support height. Initial value was 2 = 2mm  |
| base_hauteur_corps | Printed rabbit has a height. This is a computed value that tou may not changed. |

# Find more ressources
- [Open scad](https://openscad.org/) may be requited if you want to change the model
- [Cura](https://ultimaker.com/software/ultimaker-cura/) may be required to slice and print your model. You may use an other slicer that supports STL files.
- [Gimp](https://www.gimp.org/) may be requited to change the PNG file. You may use an other image editor that supports PNG files.
  
