.syntax unified

.word 0x20000100
.word _start

.global _start
.type _start, %function
_start:
	//
	//mov # to reg
	//
	movs	r0,	#100
	movs	r1,	#101
	movs	r2,	#102
	movs	r3,	#103
	movs    r4,     #104
	movs    r5,     #105
	movs    r6,     #190
	
    
	
        push	{r0, r1, r2}
	
        //push	{r2, r1, r0}  //still in compiler is {r0,r1,r2}

	
        pop     {r3}
        pop     {r4}
        pop     {r5}
        
        b       _start         //loop execute it so that i don't have to reset the virtualmachine(qemu and gdb) :)
