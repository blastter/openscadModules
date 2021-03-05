module GearGenerator(teethQuantity, teethLength, height){
    perimeter= teethLength*teethQuantity;
    radius = perimeter/(2*PI);
    echo("Dientes:");
    echo(teethQuantity);
    angle = 360/(teethQuantity);
    union(){
        cylinder(h=height, r=radius, center = true, $fn = teethQuantity*2);
        
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