
.data
#   int arr[] = {3, 10, 7, 9, 4, 11};
array:  .space 40
tempArr: .space 40
printArr: .space 40
msg:	.asciiz	"Longest Increasing Subsequence is: "
line:	.asciiz	" "
size:	.asciiz	" size: "
lineEnd: .asciiz "\n"
fout:   .asciiz "testout.txt"      # filename for output
.text
main:
	#array definition
	addi $s0,$zero,3
	addi $s1,$zero,10
	addi $s2,$zero,7   
	addi $s3,$zero,9
	addi $s4,$zero,4
	addi $s5,$zero,11
	
	addi $t0,$zero,0
	
	sw $s0 array($t0)
	addi $t0,$t0,4
	sw $s1 array($t0)
	addi $t0,$t0,4
	sw $s2 array($t0)
	addi $t0,$t0,4
	sw $s3 array($t0)
	addi $t0,$t0,4
	sw $s4 array($t0)
	addi $t0,$t0,4
	sw $s5 array($t0)
	addi $t0,$t0,4
	addi $t7,$zero,0

	addi $s2,$zero,6 #arrSize=6 
	jal func
	jal arrayPrintConsole
	jal arrayPrintFile
	
	#array definition
	addi $s0,$zero,5
	addi $s1,$zero,2
	addi $s2,$zero,6   
	addi $s3,$zero,8
	addi $s4,$zero,15

	
	addi $t0,$zero,0
	
	sw $s0 array($t0)
	addi $t0,$t0,4
	sw $s1 array($t0)
	addi $t0,$t0,4
	sw $s2 array($t0)
	addi $t0,$t0,4
	sw $s3 array($t0)
	addi $t0,$t0,4
	sw $s4 array($t0)
	addi $t0,$t0,4
	addi $t7,$zero,0

	addi $s2,$zero,5 #arrSize=5
	jal func
	jal arrayPrintConsole
	jal arrayPrintFile
	
	#array definition
	addi $s0,$zero,8
	addi $s1,$zero,12
	addi $s2,$zero,4   
	addi $s3,$zero,15
	addi $s4,$zero,3
	addi $s5,$zero,18
	addi $s6,$zero,30
	
	addi $t0,$zero,0
	
	sw $s0 array($t0)
	addi $t0,$t0,4
	sw $s1 array($t0)
	addi $t0,$t0,4
	sw $s2 array($t0)
	addi $t0,$t0,4
	sw $s3 array($t0)
	addi $t0,$t0,4
	sw $s4 array($t0)
	addi $t0,$t0,4
	sw $s5 array($t0)
	addi $t0,$t0,4
	sw $s6 array($t0)
	addi $t7,$zero,0

	addi $s2,$zero,7 #arrSize=7 
	jal func
	jal arrayPrintConsole
	jal arrayPrintFile
	
	#array definition
	addi $s0,$zero,1
	addi $s1,$zero,3
	addi $s2,$zero,7   
	addi $s3,$zero,9
	addi $s4,$zero,4
	addi $s5,$zero,13
	addi $s6,$zero,10
	addi $s7,$zero,8
	addi $t2,$zero,70
	
	addi $t0,$zero,0
	
	sw $s0 array($t0)
	addi $t0,$t0,4
	sw $s1 array($t0)
	addi $t0,$t0,4
	sw $s2 array($t0)
	addi $t0,$t0,4
	sw $s3 array($t0)
	addi $t0,$t0,4
	sw $s4 array($t0)
	addi $t0,$t0,4
	sw $s5 array($t0)
	addi $t0,$t0,4
	sw $s6 array($t0)
	addi $t0,$t0,4
	sw $s7 array($t0)
	addi $t0,$t0,4
	sw $t2 array($t0)
	addi $t0,$t0,4
	addi $t7,$zero,0

	addi $s2,$zero,9 #arrSize=9 
	jal func
	jal arrayPrintConsole
	jal arrayPrintFile
	
	#array definition
	addi $s0,$zero,2
	addi $s1,$zero,12
	addi $s2,$zero,24   
	addi $s3,$zero,19
	addi $s4,$zero,38
	addi $s5,$zero,14
	addi $s6,$zero,42
	addi $s7,$zero,10
	addi $t2,$zero,72   
	addi $t3,$zero,90
	
	addi $t0,$zero,0
	
	sw $s0 array($t0)
	addi $t0,$t0,4
	sw $s1 array($t0)
	addi $t0,$t0,4
	sw $s2 array($t0)
	addi $t0,$t0,4
	sw $s3 array($t0)
	addi $t0,$t0,4
	sw $s4 array($t0)
	addi $t0,$t0,4
	sw $s5 array($t0)
	addi $t0,$t0,4
	addi $t7,$zero,0
	sw $s6 array($t0)
	addi $t0,$t0,4
	sw $s7 array($t0)
	addi $t0,$t0,4
	sw $t2 array($t0)
	addi $t0,$t0,4
	sw $t3 array($t0)

	addi $t7,$zero,0

	addi $s2,$zero,10 #arrSize=10 
	jal func
	jal arrayPrintConsole
	jal arrayPrintFile

	#array definition
	addi $s0,$zero,8
	addi $s1,$zero,22
	addi $s2,$zero,9   
	addi $s3,$zero,33
	addi $s4,$zero,21
	addi $s5,$zero,50
	addi $s6,$zero,41
	addi $s7,$zero,60
	
	addi $t0,$zero,0
	
	sw $s0 array($t0)
	addi $t0,$t0,4
	sw $s1 array($t0)
	addi $t0,$t0,4
	sw $s2 array($t0)
	addi $t0,$t0,4
	sw $s3 array($t0)
	addi $t0,$t0,4
	sw $s4 array($t0)
	addi $t0,$t0,4
	sw $s5 array($t0)
	addi $t0,$t0,4
	sw $s6 array($t0)
	addi $t0,$t0,4
	sw $s7 array($t0)
	addi $t7,$zero,0

	addi $s2,$zero,8 #arrSize=8 
	jal func
	jal arrayPrintConsole
	jal arrayPrintFile
	
exit:
	
	li	$v0,10		# Code for syscall: exit
	syscall		
	
func:
	#variable definition
	addi $s0,$zero,0 #i=0   
	addi $s1,$zero,1 #j=1

	addi $s3,$zero,1 #counter=1
	addi $s4,$zero,0 #count=0
	addi $s5,$zero,1 #size=1
	addi $s6,$zero,1 #bigSize=1
	addi $s7,$zero,0 #a=0
loopOne:

	li $t1,0
	li $t2,0
	addi $t1,$s2,-1 
	beq $s4,$t1 breakFunc #if(count == arrSize-1) break
	bne $s4,$t1 else #if(count == arrSize-1) break
breakFunc:
	jr $ra # return	
else:
	#printf("%d ",arr[count]);
	mul $t7,$s4,4
	lw $t1,array($t7)
	li	$v0,1		
	addi	$a0, $t1,0	
	syscall	
	li	$v0,4		
	la	$a0, line	
	syscall
	#temp[size-1] = array[count]
	mul $t1,$s4,4
	addi $t2,$s5,-1
	mul $t2,$t2,4
	lw $t3,array($t1)
	sw $t3,tempArr($t2)
	li $t1,0
	li $t2,0
	li $t3,0	
loopTwo:
	addi $t1,$s2,-1         #if(i == arrSize-1)      
	beq $t1,$s0,labelOne
	bne $t1,$s0,continueloopTwo
	
labelOne:
	addi $s3,$s3,1 # counter++;
	move $s1,$s3 # j=counter;
	move $s0,$s4 # i=count;
	#printf("size: %d\n",size);
	li	$v0,4		
	la	$a0, size	
	syscall	
	li	$v0,1		
	addi	$a0, $s5,0	
	syscall
	li	$v0,4		
	la	$a0, lineEnd	
	syscall
		
	bgt $s5,$s6,nestedLoop # if(size > bigSize)
	ble $s5,$s6,continuelabelOne #else
nestedLoop:
	beq $s7,$s5,continuelabelOne #if(a == size)
	#printArr[a] = temp[a];
	mul $t1,$s7,4
	lw $t2,tempArr($t1)
	sw $t2,printArr($t1)
	addi $s7,$s7,1 #a++
	move $s6,$s5 # bigSize = size
	j nestedLoop
continuelabelOne:
	li $s7 0	
	li $s5,1 #size=1;
	li $t2,0
	#printf("%d ",arr[count]);
	mul $t7,$s4,4
	lw $t1,array($t7)
	li	$v0,1		
	addi	$a0, $t1,0	
	syscall
	li	$v0,4		
	la	$a0, line	
	syscall	
	#temp[size-1] = array[count]
	mul $t1,$s4,4
	addi $t2,$s5,-1
	mul $t2,$t2,4
	lw $t3,array($t1)
	sw $t3,tempArr($t2)	 	 
continueloopTwo:
	#if(arr[i] < arr[j])
	mul $t1,$s0,4
	mul $t2,$s1,4
	lw $t1 ,array($t1)
	lw $t2 ,array($t2)
	bgt $t2,$t1,labelTwo 
	ble $t2,$t1,labelTwoElse
labelTwo:
	move $s0,$s1 #i=j;
	addi $s5,$s5,1	#size++;
	#printf("%d ",arr[j]);
	mul $t7,$s1,4
	lw $t1,array($t7)
	li	$v0,1		
	addi	$a0, $t1,0	
	syscall
	li	$v0,4		
	la	$a0, line	
	syscall	
	#temp[size-1] = array[j]
	mul $t1,$s1,4
	addi $t2,$s5,-1
	mul $t2,$t2,4
	lw $t3,array($t1)
	sw $t3,tempArr($t2)
	j labelThree
labelTwoElse:
	addi $s1,$s1,1	#j++;
labelThree:
	addi $t1,$s3,1
	sub  $t2,$s2,$s4
	beq $t1,$t2,labelThreeContiune #if(counter+1 == arrSize-count)
	bne $t1,$t2,continueLoop
	
labelThreeContiune:
	addi $s4,$s4,1 #count++;
	li $s3,1 #counter=1;
	move $s0,$s4 #i=count;
	addi $s1,$s4,1 #j=count+1;
	#printf("size: %d\n",size);
	li	$v0,4		
	la	$a0, size	
	syscall	
	li	$v0,1		
	addi	$a0, $s5,0	
	syscall
	li	$v0,4		
	la	$a0, lineEnd	
	syscall
	li	$v0,4		
	la	$a0, lineEnd	
	syscall
	li $s5,1
	j loopOne
	
continueLoop:
	j loopTwo		 		
	 		
	
arrayPrintFile:
	# allocate memory for 3 chars + \n, no need to worry about \0
	li $v0, 9
	li $a0, 4   # allocate 4 bytes for 4 chars
	syscall
	move $s0, $v0

	addi $s0, $s0, 3    # point to the end of the buffer

	li $t3, 10      # end line with \n
	sb $t3, 0($s0)
	addi $s0, $s0, -1
	li $t7,0
	mul $t6,$s6,4
	addi $t6,$t6,-4

	
loop:
	beq $zero,$t6,breakPrintarrFile
	bne $zero,$t6,elsePrintarrFile
breakPrintarrFile:
	lw $t1,printArr($t6)
	addi $t1,$t1,48
	sb $t1, 0($s0)
	
	# Open (for writing) a file that does not exist
	li   $v0, 13       # system call for open file
	la   $a0, fout     # output file name
	li   $a1, 9        # Open for writing (flags are 0: read, 1: write)
	li   $a2, 0        # mode is ignored
	syscall            # open a file (file descriptor returned in $v0)
	move $s6, $v0      # save the file descriptor 

	# Write to file just opened
	li   $v0, 15       # system call for write to file
	move $a0, $s6      # file descriptor 
	move $a1, $s0      # address of buffer from which to write
	li   $a2, 20        # hardcoded buffer length
	syscall            # write to file

	# Close the file 
	li   $v0, 16       # system call for close file
	move $a0, $s6      # file descriptor to close
	syscall            # close file
	
	jr $ra # return	
elsePrintarrFile:
	lw $t1,printArr($t6)
	div $t2,$t1,10
	mfhi $t3
	bge $t2,1,division			
	addi $t1,$t1,48
	sb $t1, 0($s0)
	addi $s0, $s0, -1   # move the pointer backwards, meaning you go from the end to the beginning
	li $t1,44
	sb $t1, 0($s0)
	addi $s0, $s0, -1   # move the pointer backwards, meaning you go from the end to the beginning
	addi $t6,$t6,-4
	j loop
division:
	addi $t3,$t3,48
	sb $t3, 0($s0)
	addi $s0, $s0, -1   # move the pointer backwards, meaning you go from the end to the beginning
	addi $t2,$t2,48
	sb $t2, 0($s0)
	addi $s0, $s0, -1   # move the pointer backwards, meaning you go from the end to the beginning
	addi $t6,$t6,-4
	li $t1,44
	sb $t1, 0($s0)
	addi $s0, $s0, -1   # move the pointer backwards, meaning you go from the end to the beginning
	
	j loop

arrayPrintConsole:
	li $t7,0
	mul $t6,$s6,4
	li	$v0,4		
	la	$a0, msg	
	syscall
	
looop:
	beq $t7,$t6,breakPrintArrayConsole
	bne $t7,$t6,elsePrintArrayConsole
breakPrintArrayConsole:
	li	$v0,4		
	la	$a0, size	
	syscall
	li	$v0,1		
	add	$a0,$zero,$s6	
	syscall
	li	$v0,4		
	la	$a0, lineEnd	
	syscall
	jr $ra # return
elsePrintArrayConsole:		
	lw $t1,printArr($t7)
	li	$v0,1		
	addi	$a0, $t1,0	
	syscall
	li	$v0,4		
	la	$a0, line	
	syscall
	addi $t7,$t7,4
	j looop				

	




