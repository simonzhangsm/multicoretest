class HelloWorld{  
        public native void displayHelloWorld();  
        static{  
                System.loadLibrary("HelloWorld");  
        }  
        public static void main(String args[]){  
                new HelloWorld().displayHelloWorld();  
        }  
}  
