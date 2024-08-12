class Tile {





	PVector position ;
	float tileSize ;



	// shapes[0]=loadShape("truchet -1");
	// shapes[1]=loadShape("truchet -1");
	// shapes[2]=loadShape("truchet -1");
	// shapes[3]=loadShape("truchet -1");
	// shapes[4]=loadShape("truchet -1");
	// shapes[5]=loadShape("truchet -1");
	// shapes[6]=loadShape("truchet -1");
	// shapes[7]=loadShape("truchet -1");
	// shapes[8]=loadShape("truchet -1");
	// shapes[9]=loadShape("truchet -1");




	Tile(float tx, float ty, int s){
		position= new PVector(tx,ty);
		tileSize= (s);



	}




	void defineTiles(){





	}


	void drawShape(){
		int k= int(random(5));
		shape(shapes[k],position.x,position.y,tileSize*(2),tileSize*(2));

	}







}

