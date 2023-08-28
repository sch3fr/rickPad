//square([19,35]); //approx pro micro dimensions

//OG rickpadd dimensions
//30*40*(2+13)

cornerRadius=6;

module Plate(){
    linear_extrude(2){
    hull(){
            translate([cornerRadius,cornerRadius,0])circle(r=cornerRadius);
            translate([30-cornerRadius,cornerRadius,0])circle(r=cornerRadius);
            translate([cornerRadius,40-cornerRadius,0])circle(r=cornerRadius);
            translate([30-cornerRadius,40-cornerRadius,0])circle(r=cornerRadius);
        }
    }
}

Plate();