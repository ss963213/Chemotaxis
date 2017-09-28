Bacteria [] Scott;
 void setup()   
 {size(600,600); 
 Scott=new Bacteria[1500];
 for(int i=0;i<1500;i++)
 Scott[i]=new Bacteria();
 
 }   
 void draw()   
 {    background(0);
 	for(int i=0;i<1500;i++)
 {Scott[i].show();
 Scott[i].move();
 }
 }  
 class Bacteria    
 { int myX;
 int myY;
 int Shape;
 int z;
 	Bacteria()
 {
   myX=300;
   myY=300;
   Shape=(int)(Math.random()*3);
   z=(int)Math.sqrt(12.5);
 }
 void show()
 {fill(myX/2.35,255-myY/2.35,(myX*myY)/4.71,90);
 noStroke();
 if(Shape==0){
   ellipse(myX,myY,10,10);}
   else if(Shape==1){
   beginShape();
     vertex(myX-5,myY);
     vertex(myX,myY-5);
     vertex(myX+5, myY);
     vertex(myX,myY+5);
     vertex(myX-5,myY);
   endShape();}
 else if(Shape==2)
 {
   beginShape();
   vertex(myX,myY-5);
   vertex(myX+z,myY+z);
   vertex(myX-z,myY+z);
   vertex(myX,myY-5);
   endShape();
 }
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