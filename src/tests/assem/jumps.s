        j $s1 start       #0
badness:
        lui 0x3F   	        #1 #
        j $s1 badness     #2
label1:
        lui 3                   #3
        j $s1 label2      #4

start:  
	lui 1			#5
	mflo $s0                #6
        j $s1 badness     #7
	lui  2                	#8
	mflo $s0		#9
        j $s1 label1      #10

label2: lui 4            	#11
	mflo $s0		#12
end:    ori $s2 $s0 0           #13
        beq $s2 $s0 end         #14
        ori $s2 $s0 2           #15

#0, 5, 6, 7, 8, 9, 10, 3, 4, 11, 12, 13, 14, 13, 14...
