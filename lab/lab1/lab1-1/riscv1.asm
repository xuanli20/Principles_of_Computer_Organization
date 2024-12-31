.data
N:
 .word 5
.text
MAIN:
lw x2,N
li t1,3
bge x2,t1,N3
addi x1,x1,1
bge x0,x0,END
N3:
addi x2,x2,-2
li t1,1
li t2,1
FOR:
add x1,t1,t2
addi t1,t2,0
addi t2,x1,0
addi x2,x2,-1
blt x0,x2,FOR
END:
    nop