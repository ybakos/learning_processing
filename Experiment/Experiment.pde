// An experimentation with curveVertex.

size(400, 400);
background(33);
stroke(200);
noFill();

beginShape();
curveVertex(50, 50);
curveVertex(100, 100);
curveVertex(200, 200);
curveVertex(200, 250);
curveVertex(50, 50);
curveVertex(50, 150);
curveVertex(120, 150);

endShape();

strokeWeight(5);
point(50, 50);
point(100, 100);
point(200, 200);
point(200, 250);
point(50, 50);
point(50, 150);
point(120, 150);
