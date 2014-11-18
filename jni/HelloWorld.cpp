#include <jni.h>  
#include <stdio.h>  
#include "HelloWorld.h"  
JNIEXPORT void JNICALL Java_HelloWorld_displayHelloWorld
(JNIEnv *env, jobject obj)  
{  
        printf("HelloWorld JNI in C++!\n");  
        return;   
}   
