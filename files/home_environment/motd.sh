#!/bin/sh
hostname=$1
echo "\033[0;31m
T)tttttt                 l)L  b)                      
   T)                     l)  b)                      
   T)     o)OOO   o)OOO   l)  b)BBBB   o)OOO  x)   XX 
   T)    o)   OO o)   OO  l)  b)   BB o)   OO   x)X   
   T)    o)   OO o)   OO  l)  b)   BB o)   OO   x)X   
   T)     o)OOO   o)OOO  l)LL b)BBBB   o)OOO  x)   XX 
\033[1;34m 
B)bbbb                d)                                         
B)   bb               d)                                         
B)bbbb    o)OOO   d)DDDD e)EEEEE n)NNNN   s)SSSS e)EEEEE e)EEEEE 
B)   bb  o)   OO d)   DD e)EEEE  n)   NN s)SSSS  e)EEEE  e)EEEE  
B)    bb o)   OO d)   DD e)      n)   NN      s) e)      e)      
B)bbbbb   o)OOO   d)DDDD  e)EEEE n)   NN s)SSSS   e)EEEE  e)EEEE 


\033[1;32m $hostname

" > /etc/motd
