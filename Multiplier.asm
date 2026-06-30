* = $C000  
Multiplier1 = 100
Multiplier2 = 100


          lda  #00
          sta  $C200
          ldx  #Multiplier1
          lda  #Multiplier2
          sta  $C100
          dex
          
          
:Multiply_loop
          clc
          adc  $C100
          dex
          bcs  Inc_High

:End_Loop 
          cpx  #00         
          bne  Multiply_loop

          

:Print_Answer
          tax
          lda $C200
          jsr  $BDCD
          rts
 

:Inc_High
          inc  $C200
          jmp  End_Loop

