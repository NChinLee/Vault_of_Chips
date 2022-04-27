// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

//  R2 = 0
//  product = 0
//LOOP:
//  if (R1 = 0) goto STOP
//  product = product + R0
//  R1 = R1 - 1
//  goto LOOP
//STOP:
//  R2 = product

    @R2
    M = 0

    @product
    M = 0

(LOOP)
    @R1
    D = M

    @STOP
    D;JEQ

    @product
    D = M

    @R0
    D = D + M

    @product
    M = D

    @R1
    M = M - 1

    @LOOP
    0;JMP


(STOP)
    @product
    D = M

    @R2
    M = D

(END)
    @END
    0;JMP