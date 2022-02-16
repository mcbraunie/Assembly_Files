#include <stdio.h>

int doNothing1(){
  printf("Nothing 1");
  return(0);
}

int doNothing2(){
  printf("Nothing 2");
  return(0);
}

int main(){
  int b = 5;

  if(b < 1){
    doNothing1();
  } else {
    doNothing2();
  }
  
  while(b < 8){
    doNothing1();
    b++;
  }

  int n = 3;
  for(int i = 0; i < n;i++){
    doNothing1();
  }
  
  do{
    doNothing1();
    b++;
  }while(b < 9);
  
  return(0);
}
