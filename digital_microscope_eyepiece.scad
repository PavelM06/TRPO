use <smartphone.scad>
echo ("Работа Макарова Павла");
$fn=200;


translate([-61, 23, -29])
color("blue")
ocular();


difference(){
smartphone();
color("red")
scale([1,1,2])
translate([-60,23,-3])
camera();
}

module top (){
    difference(){
        cylinder(d=30,h=5,center=true);
        cylinder(d=23-0.5-3,h=15,center=true);
}
}


module ocular(){
    translate([0,0,35/2+5/2])
    top();
    difference(){
        cylinder(d=23-0.5, h=35, center=true);
        cylinder(d=23-0.5-3, h=40, center=true);
}
}
