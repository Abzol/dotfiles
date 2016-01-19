#!/bin/python
#-*- coding:utf8 -*-
# clock
# show a neato clock. i guess
import os

COLON = """
    
    
:88:
    
    
    
    
:88:""".split('\n')

ZERO = """
 .:d8888b:. 
 d8'¨  ¨'8b 
 88:    :88 
 88::88::88 
 88:    :88 
 88:.  .:88 
 Y8b:  :d8Y 
 ¨'Y8888Y'¨ """.split('\n')

ONE = """
   .d88b.   
 .dY'88I:   
     88I:   
     88I:   
     88I:   
     88I:   
     88I:   
 .d888888b. """.split('\n')

TWO = """
   d8888b   
 .dY'  'Yb. 
        :8: 
       d8'  
     .d8'   
    .d8'    
  .:d8'     
 .d888888b. """.split('\n')

THREE = """
 .d88888b.  
       'Y8: 
       .:8: 
     888I:  
       ':8: 
        :8: 
       .:8: 
 'Y88888Y'  """.split('\n')

FOUR = """
     .d88:  
    .d888:  
   .d8'88:  
  .d8' 88:  
 .88:  88:  
 '88888888: 
       88:  
       88:  """.split('\n')

FIVE = """
 .d88888b.  
 :88'       
 :88.       
 'Y8888b.   
      'Y8b  
       :88  
      .d8Y  
 'Y8888Y'   """.split('\n')

SIX = """
  .d8888b.  
  d8'       
 .88'       
 :888888b.  
 :88'  '88: 
 :88    88: 
 '88.  .88' 
  'Y8888Y'  """.split('\n')

SEVEN = """
""".split('\n')

EIGHT = """
""".split('\n')

NINE = """
""".split('\n')

if __name__ == "__main__":
    rows, columns = os.popen('stty size', 'r').read().split()
    for i in range(1,9):
        print SIX[i] + ONE[i] + COLON[i] + THREE[i] + FOUR[i] + COLON[i] + FIVE[i] + ZERO[i]
