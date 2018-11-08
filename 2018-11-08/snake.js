//Web Editor -- https://editor.p5js.org/
//P5 Reference -- https://p5js.org/reference/#/p5/draw

TILE = 8;
HEIGHT = 400 / TILE;
WIDTH = 400 / TILE;

function snake() {
	this.size = 3;
	this.body = [
		[0, 0],
		[1, 0],
		[2, 0]
	];
	this.heading = 'R';
	this.color = "#fff";

	this.update = function() {
		switch (this.heading) {
			case 'R':
				var last = this.body[this.body.length - 1];
				this.body.push([last[0] + 1, last[1]]);
				break;
			case 'L':
				var last = this.body[this.body.length - 1];
				this.body.push([last[0] - 1, last[1]]);
				break;
			case 'U':
				var last = this.body[this.body.length - 1];
				this.body.push([last[0], last[1] - 1]);
				break;
			case 'D':
				var last = this.body[this.body.length - 1];
				this.body.push([last[0], last[1] + 1]);
				break;
		}
		
		if (this.body.length > this.size) this.body.shift();

		//body push novo tile
		//body pop ultime tile se size = body.lenght
	}
	
	this.draw = function() {
		for(var i=0; i<this.body.length; i++) {
			rect(this.body[i][0] * TILE, this.body[i][1] * TILE, TILE, TILE);
		}
	}
}

function mouse(X, Y) {
	this.posX = 0;
	this.posY = 0;
	this.color = color(145, 204, 0);
}

function setup() {
	var snakePos = Array();

	createCanvas(400, 400);
	littleSnake = new snake();
	littleMouse = new mouse();
}

function drawGrid() {
	stroke("#545454");
	for (var i = 0; i < 400; i += TILE)
		line(i, 0, i, 400);
	for (var j = 0; j < 400; j += TILE)
		line(0, j, 400, j);
}

function draw() {
	background(0);
	drawGrid();

	littleSnake.update();
	littleSnake.draw();	
	console.log()
}
