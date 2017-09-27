int x;
int y;
int type;
Bacteria[]many;
 void setup()   
 {      
   size(300,300);
   many = new Bacteria[200];
   for(int i=0; i<many.length; i++)
   {
     many[i] = new Bacteria();  
   } 
 }   
 void draw()   
 {    
   background(0);
   for(int i=0; i<many.length; i++)
   {
   many [i].move();
   many [i].show();
   } 
 }  
 class Bacteria    
 {    
   int myX,myY;
   Bacteria()
   {
   }
   void move()
   {
     if(mousePressed==true)
     {
       if (mouseX<myX)
       myX =myX +(int)((Math.random()*7)-2);//right
       else
       myX=myX+(int)((Math.random()*7)-4);//left
       if (mouseY<myY)
       myY =myY +(int)((Math.random()*7)-2);//up
       else 
       myY= myY +(int)((Math.random()*7)-4);//down
     }
     if (mousePressed==false)
     {
       if (mouseX<myX)
       myX =myX +(int)((Math.random()*7)-2);//right
       else
       myX=myX+(int)((Math.random()*7)-4);//left
       if (mouseY<myY)
       myY =myY +(int)((Math.random()*7)-2);//up
       else 
       myY= myY +(int)((Math.random()*7)-4);//down
     }
     if (myX<0)
     myX=0;
     if (myX>300)
     myX=300;
     if (myY<0)
     myY=0;
     if(myY>300)
     myY=300;
   }
   void show()
   {
     type=(int)(Math.random()*256);
     fill(type,type+50,type-50);
     ellipse(myX,myY,25,25);
   }
 
 }    