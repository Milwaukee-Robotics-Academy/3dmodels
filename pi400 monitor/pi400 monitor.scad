// Monitor
% cube([165, 104, 7.5]);

// Threaded Insert
module threadedInsert() {
    cylinder(3, 2.5, 2.5);
}

module threadedInserts() {
    translate([-5, 5, 0])
        threadedInsert();
    translate([-5, 104 - 5, 0])
        threadedInsert();
    translate([165 + 5, 5, 0])
        threadedInsert();
    translate([165 + 5, 104 -5, 0])
        threadedInsert();
}

threadedInserts();

// Faceplate


translate([-10, -3, -3])
    cube([165 + 20, 104 + 6 + 7, 3]);
