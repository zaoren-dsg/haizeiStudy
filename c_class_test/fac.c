/*************************************************************************
	> File Name: fac.c
	> Author: 
	> Mail: 
	> Created Time: Tue 01 Dec 2020 07:35:59 PM CST
 ************************************************************************/

#include<stdio.h>

int fac(int n){
    if (n == 0)return 1;
    if (n == 1)return 1;
    return n * fac(n - 1);
}

int main(){
    int n;
    while (~scanf("%d", &n)){
        printf("fac(n) = %d\n", fac(n));
    }
    return 0;
}
