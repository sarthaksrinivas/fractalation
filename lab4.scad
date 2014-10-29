module fractal(size, recursionDepth) {

	polyhedron(
		points = [[0, size / sqrt(3), 0], [size / 2, -sqrt(3) / 6 * size, 0], [-size / 2, -sqrt(3) / 6 * size, 0], [0, 0, sqrt(2/3) * size]], 
		faces = [[0, 1, 2], [0, 1, 3], [1, 2, 3], [2, 0, 3]]
	);
}

fractal(10, 1);