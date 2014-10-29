//translate([-2, 0, 0])
//	color([1, 0, 0])
//		cube(size = [1, 2, 3], center = true);
//
//translate([0, 0, 0])
//	color([0, 1, 0])
//		cube(size = [1, 2, 3], center = true);
//
//translate([2, 0, 0])
//	color([0, 0, 1])
//		cube(size = [1, 2, 3], center = true);
//
//translate([0, -3, 0])
//	color([1, 0, 0])
//		sphere(r = 1, $fn = 30);
//
//translate([0, 0, 0])
//	color([0, 1, 0])
//		sphere(r = 1, $fn = 30);
//
//translate([0, 3, 0])
//	color([0, 0, 1])
//		sphere(r = 1, $fn = 30);

//polyhedron(
//  points=[ [10,10,0],[10,-10,0],[-10,-10,0],[-10,10,0], // the four points at base
//           [0,0,10]  ],                                 // the apex point 
//  faces=[ [0,1,4],[1,2,4],[2,3,4],[3,0,4],              // each triangle side
//              [1,0,3],[2,1,3] ]                         // two triangles for square base
// );

module fractal(size, recursionDepth) {

	polyhedron(
		points = [[0, size / sqrt(3), 0], [size / 2, -sqrt(3) / 6 * size, 0], [-size / 2, -sqrt(3) / 6 * size, 0], [0, 0, sqrt(2/3) * size]], 
		faces = [[0, 1, 2], [0, 1, 3], [1, 2, 3], [2, 0, 3]]
	);
}

fractal(10, 1);