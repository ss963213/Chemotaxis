Bacteria [] Scott;
 void setup()   
 {size(600,600); 
 Scott=new Bacteria[30];
 for(int i=0;i<30;i++)
 Scott[i]=new Bacteria();
 
 }   
 void draw()   
 {    background(0);
 	for(int i=0;i<30;i++)
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
 {fill(myX+myY/50,myX+myY*2,myX+myY);
   ellipse(myX,myY,10,10);
 }
 void move()
 {myX=myX+(int)(Math.random()*11)-5;
   myY=myY+(int)(Math.random()*11)-5;
   if(mouseX>myX)
 myX=myX+(int)(Math.random()*11)-3;
 else if(mouseX<myX)
 myX=myX+(int)(Math.random()*11)-7;
 if(mouseY>myY)
 myY=myY+(int)(Math.random()*11)-3;
 else if(mouseY<myY)
 myY=myY+(int)(Math.random()*11)-7;
 }
 }    