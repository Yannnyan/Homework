#include <stdio.h>   
#include <assert.h>
#include "NumClass.h"
int main(){
    int a,b;
     printf("Enter two positive integers:");
     scanf("%d", &a); scanf("%d", &b);
     int min = a <= b ? a : b;
     int max = a >= b ? a : b;
     int temp =min;
     while(temp <= max){
         int tempprime = isPrime(temp);
         if(tempprime == 1) {printf("%d ",temp);}
         temp+=1;
     }
     temp =min;
     printf("\n");
     while(temp <= max){
         int tempArmstrong = isArmstrong(temp);
         if(tempArmstrong == 1) {printf("%d ",temp);}
         temp+=1;
     }
     temp =min;
     printf("\n");
     
     while(temp <= max){
         int tempStrong = isStrong(temp);
         if(tempStrong == 1){printf("%d ",temp);}
         temp+=1;
     }
     temp =min;
     printf("\n");
     while(temp <= max){
         int tempPalindrome = isPalindrome(temp);
         if(tempPalindrome == 1){printf("%d ", temp);}
         temp+=1;
     }
     }

