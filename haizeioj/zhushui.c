/*************************************************************************
	> File Name: zhushui.c
	> Author: 
	> Mail: 
	> Created Time: Thu 03 Dec 2020 03:06:29 PM CST
 ************************************************************************/

#include<stdio.h>

int main(){
        int a, b, c, t;
        scanf("%d %d %d %d", &a, &b , &c, &t);
        double va, vb, vc, T;
        va = 1 / a;
        vb = 1 / b;
        vc = 1 / c;
        T = (1 - (va + vb) * t) / (va + vb - vc) + t; 
        printf("%0.2lf", T);
        

}
