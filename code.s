Narcissistic:
mv x6 , a0
addi x7 , x0 , x6 
addi x8 , x0 , x6
add x28 , x0 , x0 
add x29 , x0 , x0 
addi x5 , x0 , 10
addi x13 , x0 , 1

L1:
divu x6 , x6 , x5 
addi x28 , x28 , 1
bge x6 , x0 , L1


L2:
addi x12 ,x0 ,x28
remu x11 , x7 ,x5 
addi x28 , x28 , -1
divu x7 ,x7 , x5
L3:
mul x11 , x11 ,x11 
addi x12 , x12 , -1 
bne x12 ,x13 , L3
addi x29 , x29 ,x11
bne x28 , x0 , L2

bne x29 , x8 , Else
addi x6 , x0 , 1
Else:
add x6 , x0 , x0 

mv x6 , a0 