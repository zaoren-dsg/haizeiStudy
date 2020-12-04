/*************************************************************************
	> File Name: EP45.c
	> Author: 
	> Mail: 
	> Created Time: Wed 02 Dec 2020 05:52:43 PM CST
 ************************************************************************/

#include<stdio.h>

int binary_search(int *num, int sameNum, int n){
    int head = 0, tail = n - 1;
    int mid;
    while(head <= tail){
        mid = (head + tail) / 2;
        if(num[mid] == x) return mid;
        if(num[mid] < x)  head = mid + 1;
        esle tail = mid - 1;
    }

    return -1;
}

int main(){

    return 0;
}
