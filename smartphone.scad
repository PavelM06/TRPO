
$fn=200;

module smartphone(){
hull(){

cube([130, 60, 7], center=true);

mirror([1,0,0])
translate([142/2-8,69/2-8,0])
color("red")
cylinder(d=15,h=7,center=true);

mirror([0,1,0])
translate([142/2-8,69/2-8,0])
color("red")
cylinder(d=15,h=7,center=true);

mirror([0,0,1])
translate([142/2-8,69/2-8,0])
color("red")
cylinder(d=15,h=7,center=true);

mirror([1,0,0])
mirror([0,1,0])
translate([142/2-8,69/2-8,0])
color("red")
cylinder(d=15,h=7,center=true);
}
}
