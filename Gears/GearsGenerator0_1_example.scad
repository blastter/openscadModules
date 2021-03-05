include <GearsGenerator0_1.scad>

difference(){
    GearGenerator(40, 3, 4);
    cylinder(h=4.1, r=2, center = true, $fn=30);
}

translate([40,0,0]){
    difference(){
        GearGenerator(20, 3, 4);
        cylinder(h=4.1, r=2, center = true, $fn=30);
    }
}
