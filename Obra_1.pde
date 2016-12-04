import de.voidplus.leapmotion.*;
LeapMotion leap;
ArrayList<PVector>old;
boolean init;
PVector old_position, old_velocity, center, target;
PImage bg1;
PImage bg2;
PImage bg3;
PImage bg4;
PImage bg5;
PImage bg6;
PImage bg7;
PImage bg8;
PImage bg9;
PImage bg10;
PImage bg11;
PImage bg12;
PImage bg13;
PImage bg14;
PImage bg15;
PImage bg16;
PImage bg17;
PImage bg18;
PImage bg19;
PImage bg20;
PImage bg21;
PImage bg22;
PImage bg23;
PImage bg24;
PImage bg25;
PImage bg26;
int y;
int maxImages = 26;
int num = 1;

void setup()
{
  size(1366, 768);
  bg1=loadImage("image1.jpg");
  bg2=loadImage("image2.jpg");
  bg3=loadImage("image3.jpg");
  bg4=loadImage("image4.jpg");
  bg5=loadImage("image5.jpg");
  bg6=loadImage("image6.jpg");
  bg7=loadImage("image7.jpg");
  bg8=loadImage("image8.jpg");
  bg9=loadImage("image9.jpg");
  bg10=loadImage("image10.jpg");
  bg11=loadImage("image11.jpg");
  bg12=loadImage("image12.jpg");
  bg13=loadImage("image13.jpg");
  bg14=loadImage("image14.jpg");
  bg15=loadImage("image15.jpg");
  bg16=loadImage("image16.jpg");
  bg17=loadImage("image17.jpg");
  bg18=loadImage("image18.jpg");
  bg19=loadImage("image19.jpg");
  bg20=loadImage("image20.jpg");
  bg21=loadImage("image21.jpg");
  bg22=loadImage("image22.jpg");
  bg23=loadImage("image23.jpg");
  bg24=loadImage("image24.jpg");
  bg25=loadImage("image25.jpg");
  bg26=loadImage("image26.jpg");
  init=true;
  old=new ArrayList<PVector>();
  old_position=new PVector(0, 0, 0);
  old_velocity=new PVector(0, 0, 0);
  strokeWeight(1);
  stroke(0);
  center=new PVector(width/2, height, 50);
  target=new PVector();
  noFill();
  leap=new LeapMotion(this);
}

void draw()
{
  stroke(226, 205, 0);
  line(0, y, width, y);
  y++;
  if (y>height)
  {
    y=0;
  }
  int fps=leap.getFrameRate();

  // ========= HANDS =========

  if (leap.getHands().size() == 0) 
  {
    //No hand
    init = true; // reset coordinates for the drawing
  }

  for (Hand hand : leap.getHands ()) 
  {
    // ========= FINGERS =========
    for (Finger finger : hand.getFingers ()) 
    {
      // Alternatives:
      // hand.getOutstrechtedFingers();
      // hand.getOutstrechtedFingersByAngle();

      // ----- BASICS -----

      //int     finger_id         = finger.getId();
      PVector finger_position   = finger.getPosition();
      //PVector finger_stabilized = finger.getStabilizedPosition();
      //PVector finger_velocity   = finger.getRawVelocity();
      //PVector finger_direction  = finger.getDirection();
      //float   finger_time       = finger.getTimeVisible();


      // ----- SPECIFIC FINGER -----

      switch(finger.getType()) {
      case 0:
        // System.out.println("thumb");
        break;
      case 1:
        // System.out.println("index");

        if (init) {
          old_position = finger_position;
          old.clear(); // Empties the ArrayList
          for (int i=0; i < 3; i++) {
            old.add(old_position);
          }
          init = false;
        }

        if ( finger_position.z > 45 ) {
          stroke(0);
        } else {
          stroke(255);
        }

        strokeWeight(abs(finger_position.z - old_position.z));


        curve (
          old.get(0).x, old.get(0).y, 
          old.get(1).x, old.get(1).y, 
          old.get(2).x, old.get(2).y, 
          finger_position.x, finger_position.y
          );

        //line(finger_position.x, finger_position.y, finger_position.x + finger_velocity.x, finger_position.y-finger_velocity.y);

        // Store actual finger position for next round.
        old_position = finger_position;
        old.remove(0);
        old.add(old_position);   

        break;
      case 2:
        // System.out.println("middle");
        break;
      case 3:
        // System.out.println("ring");
        break;
      case 4:
        // System.out.println("pinky");
        break;
      }
    }
  }
}

// ========= CALLBACKS =========

void leapOnInit() {
  // println("Leap Motion Init");
}
void leapOnConnect() {
  // println("Leap Motion Connect");
}
void leapOnFrame() {
  // println("Leap Motion Frame");
}
void leapOnDisconnect() {
  // println("Leap Motion Disconnect");
}
void leapOnExit() {
  // println("Leap Motion Exit");
}

void keyPressed() 
{
  if (key == 'q') 
  {  
    background(bg1);
  }
  if (key == 'w') 
  {  
    background(bg2);
  }
  if (key == 'e') 
  { 
    background(bg3);
  }
  if (key == 'r') 
  { 
    background(bg4);
  }
  if (key == 't') 
  { 
    background(bg6);
    }
  if (key == 'y') 
  { 
    background(bg7);
    }
  if (key == 'u')
  { 
    background(bg8);
    }
  if (key == 'i') 
  { 
    background(bg9);
    }
  if (key == 'o')
  { 
    background(bg10);
    }
  if (key == 'p') 
  { 
    background(bg11);
    }
  if (key == 'a') 
  { 
    background(bg12);
    }
  if (key == 's') 
  { 
    background(bg13);
    }
  if (key == 'd') 
  { 
    background(bg14);
    }
  if (key == 'f') 
  { 
    background(bg15);
    }
  if (key == 'g') 
  { 
    background(bg16);
    }
  if (key == 'h') 
  { 
    background(bg17);
    }
  if (key == 'j') 
  { 
    background(bg18);
    }
  if (key == 'k') 
  { 
    background(bg19);
    }
  if (key == 'l') 
  { 
    background(bg20);
    }
  if (key == 'ñ') 
  { 
    background(bg21);
    }
  if (key == 'z') 
  { 
    background(bg22);
  }
  if (key == 'x') 
  { 
    background(bg23);
  }
  if (key == 'c') 
  { 
    background(bg24);
  }
  if (key == 'v') 
  { 
    background(bg25);
  }
  if (key == 'b')
  { 
    background(bg26);
  }
  if (key == 'n') { 
    background(bg5);
  }
}
    
    
    
    
    
    
    
    
    
    
    