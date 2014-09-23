 Bacteria [] a;
 void setup()   
 {     
 	background(0);
 	size(300,300);
 	a= new Bacteria[100];
 	for(int i=0;i<a.length;i++)
 	{
 		a[i]=new Bacteria();
 	}
 }   
 void draw()   
 {    
 	for(int i=0;i<a.length;i++)
 	{
 		a[i].move();
 		a[i].show();
 	}
 }  
 class Bacteria    
 {     
   int myX,myY;
   Bacteria()
   {
   	myX=(int)(Math.random()*90)+90;
   	myY=(int)(Math.random()*90)+90;
   }
   void move()
   {
   	myX=myX+(int)(Math.random()*7)-3;
   	myY=myY+(int)(Math.random()*7)-3;
   }
   void show()
   {
   	noStroke();
   	fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   	ellipse(myX,myY,5,5);
   }
 }    
