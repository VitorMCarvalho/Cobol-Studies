
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG08.
      *****************************************
      * UTILIZAR COMANDO DE IF/ELSE/END IF
      *****************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 WS-NOTA1 PIC 9(2)V99 VALUES ZEROS.
           77 WS-NOTA2 PIC 9(2)V99 VALUES ZEROS.
           77 WS-NOTA3 PIC 9(2)V99 VALUES ZEROS.

       PROCEDURE DIVISION.
           ACCEPT WS-NOTA1.
           ACCEPT WS-NOTA2.
           COMPUTE WS-NOTA3 = (WS-NOTA1 + WS-NOTA2) /2.
           DISPLAY "(" WS-NOTA1 " + " WS-NOTA2 ")/2 = " WS-NOTA3.
      * EVALUEATE EH O SWITCH-CASE
           EVALUATE WS-NOTA3
      * O THRU TEM QUE ESTAR EM ORDEM CRESCENTE
               WHEN 6 THRU 10
                   DISPLAY "APROVADO"
               WHEN 0 THRU 5,99
                   DISPLAY "REPROVADO"
               WHEN OTHER
                   DISPLAY "NAO PROGRAMADO"
           END-EVALUATE.

           STOP RUN.
       END PROGRAM PROG08.
