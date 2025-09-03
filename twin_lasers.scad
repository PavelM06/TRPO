$fn = 64;

cube([40,70,5],center=true);
color("red")
translate([0,-70/2,0])
cylinder (h=5,d=40,center=true);
color("green")
translate([0,70/2,0])
cylinder (h=5,d=40,center=true);