
// based on https://christophercarlson.com/portfolio/multi-scale-truchet-patterns/
//chrome-extension://efaidnbmnnnibpcajpcglclefindmkaj/https://archive.bridgesmathart.org/2018/bridges2018-39.pdf


Tile tile;
float tileSize = 300;

int grid=4;

PShape [] shapes = new PShape  [14];

void setup(){

//	shapes = new PShape[loadShape("truchet -1.svg"),loadShape(" truchet -2.svg"),loadShape(",truchet -3.svg"),loadShape(",truchet -4.svg"),loadShape(",truchet -5.svg"),loadShape(",truchet -6.svg"),loadShape(",truchet -7.svg"),loadShape(",truchet -8.svg"),loadShape(",truchet -9.svg"),loadShape(",truchet -10.svg"),loadShape(",truchet -11.svg"),loadShape(",truchet -12.svg")];


for(int i=0; i<shapes.length;i++){
	String s="truchet-"+(i+1)+".svg";
	shapes[i]=loadShape(s);

}







size(600,600);
background(125);
tileSize=width/grid;




}


void draw(){


	placeTiles(width,height,tileSize,1);
	placeTiles(width,height,tileSize/2,0.1);


	// for (float i=tileSize/2; i<width;i+=tileSize){
	// 	for (float j=tileSize/2; j<width;j+=tileSize){
	// 		if (random(10)<2){
	// 			int k= int(random(shapes.length));


	// 			shape(shapes[k],i-tileSize,j-tileSize,tileSize,tileSize);
	// 			 k= int(random(shapes.length));
	// 			shape(shapes[k],i+tileSize,j-tileSize,tileSize,tileSize);
	// 			k= int(random(shapes.length));
	// 			shape(shapes[k],i-tileSize,j+tileSize,tileSize,tileSize);
	// 			k= int(random(shapes.length));
	// 			shape(shapes[k],i+tileSize,j+tileSize,tileSize,tileSize);



	// 		}
	// 	}

	// }	



		noLoop();
}


	void mouseClicked(){
		loop();
	}


	void placeTiles(float w, float h, float t, float rn){
	shapeMode(CENTER);

	for (float i=t/2; i<w;i+=t){
		for (float j=t/2; j<h;j+=t){
			if(random(1)<rn){
			int k= int(random(shapes.length));
			shape(shapes[k],i,j,t*(2),t*(2));
			}
		}
	}

	}