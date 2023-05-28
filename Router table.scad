// Router table top

function mm(inch) = inch * 25.4;

topWidth = mm(13);
topDepth = mm(8);
topHeight = mm(11 / 16);

plateDiameter = mm(5.75);
plateThickness = mm(0.25);

holeDiameter = mm(3.75);

slotWidth = mm(0.25);
slotLength = mm(3);
slotInset = mm(1.5);

module slot(position) {

    translate([position, topDepth - mm(1) - slotLength, -0.001])
        cube([slotWidth, slotLength, topHeight + 0.002]);

}


difference() {
    
    cube([topWidth, topDepth, topHeight]);

    translate([topWidth / 2, topDepth / 2, (topHeight - plateThickness) + 0.001])
        cylinder(h = plateThickness, d = plateDiameter, center = false);
    
    translate([topWidth / 2, topDepth / 2, -0.001])
        cylinder(h = topHeight, d = holeDiameter, center = false);
    
    slot(slotInset);
    
    slot(topWidth - slotInset);

}
