.data
N:
 .word 69
.text
MAIN:
lw x2,N
li t1,3
bge x2,t1,N3
addi x4,x4,1
bge x0,x0,END
N3:
addi x2,x2,-2
#t1为高位，t2为低位
li t1,0
li t2,1
#t3为高位，t4为低位
li t3,0
li t4,1
FOR:
#低位相加
add x4,t2,t4
#t5存储进位
sltu t5,x4,t2
#高位相加
add x3,t1,t3
#高位加进位
add x3,x3,t5
addi t1,t3,0
addi t2,t4,0
addi t3,x3,0
addi t4,x4,0
addi x2,x2,-1
blt x0,x2,FOR
END:
