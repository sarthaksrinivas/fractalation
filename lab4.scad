module fractal(size, recursionDepth) { // Create fractal of arbitrary size and level of detail
	b1 = [0, size / sqrt(3), 0]; // Coordinates of base 1
	b2 = [size / 2, -sqrt(3) / 6 * size, 0]; // Coordinates of base 2
	b3 = [-size / 2, -sqrt(3) / 6 * size, 0]; // Coordinates of base 3
	v = [0, 0, sqrt(2/3) * size]; // Coordinates of vertex

	polyhedron(
		points = [b1, b2, b3, v], 
		faces = [[0, 1, 2], [0, 1, 3], [1, 2, 3], [2, 0, 3]]
	);
//
//	polyhedron(
//		
//	);
}

// fractal(10, 1);

/**
Ideas

1) Create smaller tetrahedron
	a) Find midpoint of each edge on one face (MIDPOINT FORMULA)
	b) Connect edges
	c) Find midpoint of new triangle
	d) Create vertex


*/