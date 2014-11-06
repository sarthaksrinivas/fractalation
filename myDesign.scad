// Sarthak Srinivas, CS1301-A1, 903075542/ssrinivas32@gatech.edu
// I worked on this homework alone, using only this semester's course materials.

// Welcome to my fractallating program! Here, you can construct 3-Dimensional Quadratic Koch snowflakes of varying sizes and complexities. Here is the format for creating a koch snowflake of your liking!
//
// fractal(edgeLength, position, recursionDepth);
//
// I have rotated the resulting fractal so that it can render in a way that is possible to 3D print. Hope you like it regardless!
//
// I recommend you compile this design (f5, not compile and render which is f6) the .scad file yourself on your computer and play around with edge lengths and resolutions, since you can see different colors for each cube instead of a monochromatic structure otherwise. Compilation time is nearly instantaneous on most modern machines.

module fractal(edgeLength, position, recursionDepth) {
	colors = rands(0, 1, 3); // Generate Random Color
	translate(position) color(colors) cube(size = [edgeLength, edgeLength, edgeLength]); // Create cube at translated position of size given
	if(recursionDepth > 1) {
		// Create smaller cubes with length half of original cube at the center of every side until recursion depth is reached
		fractal(edgeLength / 2, position + [edgeLength, edgeLength / 4, edgeLength / 4], recursionDepth - 1);
		fractal(edgeLength / 2, position + [edgeLength / 4, edgeLength, edgeLength / 4], recursionDepth - 1);
		fractal(edgeLength / 2, position + [edgeLength / 4, edgeLength / 4, edgeLength], recursionDepth - 1);
		fractal(edgeLength / 2, position + [-edgeLength / 2, edgeLength / 4, edgeLength / 4], recursionDepth - 1);
		fractal(edgeLength / 2, position + [edgeLength / 4, -edgeLength / 2, edgeLength / 4], recursionDepth - 1);
		fractal(edgeLength / 2, position + [edgeLength / 4, edgeLength / 4, -edgeLength / 2], recursionDepth - 1);
	}
}

edgeLength = 40;
fractal(edgeLength, [-edgeLength / 2, -edgeLength / 2, -edgeLength / 2], 5);
