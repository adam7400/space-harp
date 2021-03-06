#include <iostream>
#include <thread>
#include <chrono>
#include <wiringPi.h>
#include <mcp3004.h>
//#include <cstdlib>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>



// SPI set-up
#define SPI_CHAN 0
#define MY_PIN 100


// Boolean to be used in the threads for the use of user interrupt
static volatile bool keep_going = true;


// User interrupt function 
void userInput() {

	while(keep_going) { 
		if (std::cin.get() == 'c') {

		keep_going = false;
		} 
	} 
} 




// Function to play sound
void play(int pin, int threshold, char tone ) { 


	int y;
	int playing = 0;

	char a[100];
	char b[100];	
	char c[100];
	char d[100];
	char e[100];
	char x[100];
	char g[100];
	char i[100];
	char j[100];
	char k[100];
	char l[100];
	char n[100];
	char o[100];



	strcpy(a,"aplay -q -d 1 A.wav");  	// Sound will play for 1 second 	
	strcpy(b,"aplay -q -d 1 B.wav");  	
	strcpy(c,"aplay -q -d 1 C.wav");  
	strcpy(d,"aplay -q -d 1 D.wav");  
	strcpy(e,"aplay -q -d 1 E.wav");  
	strcpy(x,"aplay -q -d 1 Ehi.wav");  	
	strcpy(g,"aplay -q -d 1 G.wav");
	strcpy(i,"aplay -q -d 1 C2.wav");
	strcpy(j,"aplay -q -d 1 G2.wav");  
	strcpy(k,"aplay -q -d 1 A#1.wav");  
	strcpy(l,"aplay -q -d 1 F2.wav");  
	strcpy(n,"aplay -q -d 1 C#3hi.wav");  
	strcpy(o,"aplay -q -d 1 C#3.wav");  


	while(keep_going){
	
	y = analogRead(MY_PIN+pin);			// Read the value from the ADC channel
	if (y < threshold && playing==0){ 		// Play corresponding sound if digital signal value drops below thr.
		playing = 1;
		if (tone=='a'){ 			
		system(a);
		}
		else if (tone=='b'){ 
		system(b);
		}
		else if (tone=='c'){ 
		system(c);
		}
		else if (tone=='d'){ 
		system(d);
		} 
		else if (tone=='e'){
		system(e);
		}
		else if (tone=='x'){ 
		system(x); 
		} 
		else if (tone=='g'){ 
		system(g);	
		}
		
		else if (tone=='i'){ 
		system(i);	
		} 	

 	
		else if (tone=='j'){ 
		system(j);	
		} 	

		else if (tone=='k'){ 
		system(k);	
		} 	

		else if (tone=='l'){ 
		system(l);	
		} 	
		
		else if (tone=='n'){ 
		system(n);	
		} 	
		
		else if (tone=='o'){ 
		system(o);	
		} 	
	}
	if (y>threshold && playing==1){
		playing = 0;
		//code to stop sound playback
		}

	}
}



class Chord{
public:


// Char to represent each string
char E;
char B;
char G;
char D;
char A;
char e; 

}; 
	




int main (void)
{
	int th;		// Digital signal threshold
	int chord;	
	
// Threshold value based on the resistor used
th = 900;


// SPI setup
  	wiringPiSetup() ;
  	mcp3004Setup (MY_PIN, SPI_CHAN); // 3004 and 3008 are the same 4/8 channels


// Define chords

// Open strings
Chord free;
free.e = 'x';
free.B = 'b';
free.G = 'g';
free.D = 'd';
free.A = 'a'; 
free.E = 'e';  

Chord Emi;
Emi.e = 'x';
Emi.B = 'b';
Emi.G = 'g';
Emi.D = 'i' ;  
Emi.A ='j' ;	
Emi.E = 'e';

Chord Ami;
Ami.e = 'x';
Ami.B = 'k';		
Ami.G = 'l'; 		
Ami.D = 'i';		
Ami.A = 'a';		
Ami.E = 'm';		// muted 

Chord G; 
G.e = 'n'; 	 	
G.B = 'b';
G.G = 'g';
G.D = 'd';
G.A = 'j';		
G.E = 'o'; 	



Chord SOTW;
SOTW.e = 'x';
SOTW.B = 'b';
SOTW.G = 'k';
SOTW.D = 'a';
SOTW.A = 'g';
SOTW.E = 'e';


// Create the object for the active chord
Chord current;

while(1) { 

// User input for picking a chord
std::cout<<"Enter the number to pick a chord: "<<std::endl;
std::cout<<"1    Open strings"<<std::endl;
std::cout<<"2    E minor"<<std::endl;
std::cout<<"3    A minor"<<std::endl;
std::cout<<"4    G"<<std::endl;
std::cout<<"5    Smoke On The Water"<<std::endl;
std::cin>> chord;
std::cout<<"Type in 'c' and press ENTER to return to the changing chords menu"<<std::endl;


// Assign chord based on the user input
if (chord == 1) { 
current = free;
} 

else if (chord == 2) { 
current = Emi; 
} 

else if (chord == 3){ 
current = Ami;
}  


else if (chord == 4) { 
current = G;
} 

else if (chord == 5) { 
current = SOTW;
} 

// Setup of the user input thread
std::thread changeChord(userInput); 

while (keep_going)
{

// Threads for each string
std::thread Estring(play,0,th,current.E);
std::thread Astring(play,1,th,current.A);
std::thread Dstring(play,2,th,current.D);
std::thread Gstring(play,3,th,current.G);
std::thread Bstring(play,4,th,current.B);
std::thread estring(play,5,th,current.e);

// Wait until thread terminates
estring.join();
Astring.join();
Dstring.join();
Gstring.join();
Bstring.join();
Estring.join();

}


// Finish the user input thread
changeChord.join(); 
keep_going = true;

} 

return 0;
}
