echo(version=version());
$fn=32;
color("black")
    linear_extrude(1.6)
        square([3.2,4.2], center=true);

color("red"){

    linear_extrude(2.5) {
        translate([0,0.4,0])
            circle(1.1);

        translate([0,-0.4,0])
            circle(1.1);
    
        square([2.2,1.1], center=true);
    }
}
        
color("silver") {
    pinLength = (2.7-1.6)/2;
    pinWidth = (4.6-4.2)/2;
    for (i = [-2.1-pinWidth/2,2.1+pinWidth/2], j = [-(1.6+pinLength)/2,(1.6+pinLength)/2]){
    translate([j,i,0])
        linear_extrude(0.5)
            square([pinLength,pinWidth], center=true);

    }
 
    
    
}