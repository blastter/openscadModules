/*
    License: MIT
    Author: Albin Trotter E.
    Date: 2021-03-05
    revision: 2
    Function o module to generate gears easyly on openScad.
    
    GearGenerator(TeethQuantityInteger, DistanceBetweenTeeth, HeightOfGear);
*/

module GearGenerator(teethQuantity, teethLength, height){
    //Calculate the perimeter of the gear.
    perimeter= teethLength*teethQuantity;
    //Calculate de Radius of the gear
    radius = perimeter/(2*PI);
    echo("Dientes:");
    echo(teethQuantity);
    //Calculate de angle of each teeth.
    angle = 360/(teethQuantity);
    union(){
        //Draw a Cylinder
        cylinder(h=height, r=radius, center = true, $fn = teethQuantity*2);
        //Draw Teeth.
        for(i=[0:1:teethQuantity]){
            rotate(a = (angle)*i){
                translate([radius, 0, 0]){
                    cube([teethLength, teethLength/2, height], center = true);
                }
            }
        }
    }
}



/*
difference(){
    GearGenerator(40, 3, 4);
    cylinder(h=4.1, r=2, center = true, $fn=30);
}
*/

/*
translate([40,0,0]){
    difference(){
        GearGenerator(20, 3, 4);
        cylinder(h=4.1, r=2, center = true, $fn=30);
    }
}
*/