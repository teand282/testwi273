import sys
import os
import random

fileNum = 0
def write():
       print ("creating new file" + str(fileNum))
       name = 'dummy' + str(fileNum) +'.txt'
       
       try:
          
             file = open(name, 'w')
             bitCount = 0
             bitsWanted = 4096
             while bitCount < bitsWanted:
                    file.write( '0' );
                    bitCount += 1
                    pass
                    
             file.close()
              
       except:
             
              print(' something wrong ')
              sys.exit(0)
              

fileSize = os.path.getsize('/')
print(fileSize)
while fileNum < 3:
       write()
       fileNum += 1
       pass
       
print (fileSize)
        



                    