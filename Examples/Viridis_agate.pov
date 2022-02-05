// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7
/*

https://github.com/t-o-k/POV-Ray-color-maps

2022 Tor Olav Kristensen, http://subcube.com

This file is released under the CC0 license,
which can be found in the LICENSE file.

*/
// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7

#version 3.7;

global_settings { assumed_gamma 1.0 }

#include "colors.inc"
#include "../Color_Maps.inc"

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7

sphere {
    0*z, 0.5
    texture {
        pigment {
            agate
            frequency 1
            octaves 2
            turbulence 2.0
            color_map { ColorMap_Viridis }
            scale <1, 1, 1>/2
        }
        finish {
            diffuse 0
            emission color White
        }
    }
}
   
#declare AspectRatio = image_width/image_height;

camera {
    orthographic
    direction +z
    right +AspectRatio*x
    up +y
    sky +y
    location -z
}

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7
