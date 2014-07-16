/**
* Laurie Waxman.
* 
* A web application that encodes text into seemingly abstract geometric imagery. 
*  
* Uses text analysis to find most common term (or whatever),
* and ColorLovers to find a colour palette based of this term.
*
* July 4th, 2014.
*
**/
String text;
int textLength;
int cube;
void setup(){
   text = "Remember my little summer project – the converting text into geometric imagery thing? Did you have a name for that sort of thing? I thought you did, but with all my googling I haven’t been able to figure out what it was, and it’s been bugging me. Name? Genre? Reference?";
   textLength = text.length();
   cube = (int) Math.ceil(sqrt(textLength));
   size(cube*20, cube*20);
   background(0);
}

void draw(){  
  color fillColour;
  int charCount = 0;
 
  noStroke();
  
  println(cube);
  
  for(int y=0;  y<cube; y++){
    for(int x=0; x<cube; x++){
      
      if(charCount<textLength){
        print(text.charAt(charCount));
        if(charCount%cube==0 && charCount>1){
          println();
        }
        if(text.charAt(charCount)=='A'||text.charAt(charCount)=='a'){
          fillColour= color(255,0,250);
        }else if(text.charAt(charCount)=='A'||text.charAt(charCount)=='a'){
          fillColour= color(255,10,240);
        }else if(text.charAt(charCount)=='B'||text.charAt(charCount)=='b'){
          fillColour= color(255,20,230);
        }else if(text.charAt(charCount)=='C'||text.charAt(charCount)=='c'){
          fillColour= color(255,30,220);
        }else if(text.charAt(charCount)=='D'||text.charAt(charCount)=='d'){
          fillColour= color(255,40,210);
        }else if(text.charAt(charCount)=='E'||text.charAt(charCount)=='e'){
          fillColour= color(255,50,200);
        }else if(text.charAt(charCount)=='F'||text.charAt(charCount)=='f'){
          fillColour= color(255,60,190);
        }else if(text.charAt(charCount)=='G'||text.charAt(charCount)=='g'){
          fillColour= color(255,70,180);
        }else if(text.charAt(charCount)=='H'||text.charAt(charCount)=='h'){
          fillColour= color(255,80,170);
        }else if(text.charAt(charCount)=='I'||text.charAt(charCount)=='i'){
          fillColour= color(255,90,160);
        }else if(text.charAt(charCount)=='J'||text.charAt(charCount)=='j'){
          fillColour= color(255,100,150);
        }else if(text.charAt(charCount)=='K'||text.charAt(charCount)=='k'){
          fillColour= color(255,110,140);
        }else if(text.charAt(charCount)=='L'||text.charAt(charCount)=='l'){
          fillColour= color(255,120,130);
        }else if(text.charAt(charCount)=='M'||text.charAt(charCount)=='m'){
          fillColour= color(255,130,120);
        }else if(text.charAt(charCount)=='N'||text.charAt(charCount)=='n'){
          fillColour= color(255,140,110);
        }else if(text.charAt(charCount)=='O'||text.charAt(charCount)=='o'){
          fillColour= color(255,150,100);
        }else if(text.charAt(charCount)=='P'||text.charAt(charCount)=='p'){
          fillColour= color(255,160,90);
        }else if(text.charAt(charCount)=='Q'||text.charAt(charCount)=='q'){
          fillColour= color(255,170,80);
        }else if(text.charAt(charCount)=='R'||text.charAt(charCount)=='r'){
          fillColour= color(255,180,70);
        }else if(text.charAt(charCount)=='S'||text.charAt(charCount)=='s'){
          fillColour= color(255,190,60);
        }else if(text.charAt(charCount)=='T'||text.charAt(charCount)=='t'){
          fillColour= color(255,200,50);
        }else if(text.charAt(charCount)=='U'||text.charAt(charCount)=='u'){
          fillColour= color(255,210,40);
        }else if(text.charAt(charCount)=='V'||text.charAt(charCount)=='v'){
          fillColour= color(255,220,30);
        }else if(text.charAt(charCount)=='W'||text.charAt(charCount)=='w'){
          fillColour= color(255,230,20);
        }else if(text.charAt(charCount)=='X'||text.charAt(charCount)=='x'){
          fillColour= color(255,240,10);
        }else if(text.charAt(charCount)=='Y'||text.charAt(charCount)=='y'){
          fillColour= color(255,250,0);
        }else if(text.charAt(charCount)=='Z'||text.charAt(charCount)=='z'){
          fillColour= color(255,240,0);
        }else if(text.charAt(charCount)=='?'){
          fillColour= color(150);
        }else if(text.charAt(charCount)=='!'){
          fillColour= color(50);
        }else if(text.charAt(charCount)=='–'){
          fillColour= color(100,255,100);
        }else if(text.charAt(charCount)=='.'){
          fillColour= color(255);
        }else if(text.charAt(charCount)==','){
          fillColour= color(100);
        }else if(text.charAt(charCount)==' '){
          fillColour= color(0);
        }else{
          fillColour= color(180,255,30);
        }
          
        fill(fillColour);
        rect(x*20, y*20, 20, 20);
        fill(0);
        text(text.charAt(charCount), (x*20)+5, (y*20)+15);
        charCount++;
      }
    }
  }
  noLoop();
}
