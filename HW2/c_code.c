#include<stdio.h>


int main(){

    int arr[] = {3,10,7,9,4,11};
    int temp[10],printArr[10];
    int i=0,j=1,arrSize=6,counter=1,count=0,size=1,bigSize=1,a;
    while(1){
        if(count == arrSize-1){
            break;
        }
        temp[size-1] = arr[count];    
        printf("%d ",arr[count]);
        while(1){

            if(i == arrSize-1){
                counter++;
                j=counter;
                i=count;
                printf("size: %d\n",size);
                if(size > bigSize){
                    for(a=0;a<size;a++){
                        printArr[a] = temp[a];
                        bigSize=size;
                    }

                }
                size=1;
                temp[size-1] = arr[count];
                printf("%d ",arr[count]);
            }
            if(arr[i] < arr[j]){
                printf("%d ",arr[j]);
                i=j;
                size++;
                temp[size-1] = arr[j];
            }
            else{
                j++;
            }
            if(counter+1 == arrSize-count){
                count++;
                counter=1;
                i=count;
                j=count+1;
                printf("size: %d\n\n",size);
                size=1;
                break;
            }
        }
    }
    printf("Array out: ");
    for(i=0;i<bigSize;i++){
        printf("%d ",printArr[i]);
    }
    printf(" size:%d \n",bigSize);
    return 0;
}

