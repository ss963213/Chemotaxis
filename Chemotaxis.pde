Bacteria [] Scott;
 void setup()   
 {size(600,600); 
 Scott=new Bacteria[1000];
 for(int i=0;i<1000;i++)
 Scott[i]=new Bacteria();
 
 }   
 void draw()   
 {    background(0);
 	for(int i=0;i<1000;i++)
 {Scott[i].show();
 Scott[i].move();
 }
 }  
 class Bacteria    
 { int myX;
 int myY;
 	Bacteria()
 {
   myX=300;
   myY=300;
 }
 void show()
 {fill(myX/2.35,255-myY/2.35,(myX*myY)/4.71);
   ellipse(myX,myY,5,5);
 }
 void move()
 {myX=myX+(int)(Math.random()*21)-10;
   myY=myY+(int)(Math.random()*21)-10;
   if(mouseX>myX)
 myX=myX+(int)(Math.random()*21)-7;
 else if(mouseX<myX)
 myX=myX+(int)(Math.random()*21)-13;
 if(mouseY>myY)
 myY=myY+(int)(Math.random()*21)-7;
 else if(mouseY<myY)
 myY=myY+(int)(Math.random()*21)-13;
 }
 }    