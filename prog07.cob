
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG07.
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
           IF WS-NOTA3 >= 6 THEN
      * IF O "THEN" EH OPCIONAL
               DISPLAY "APROVADO"
           ELSE
               DISPLAY "REPROVADO"
           END-IF.

           STOP RUN.
       END PROGRAM PROG07.
