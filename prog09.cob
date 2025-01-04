       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAM-09.
      ***************************
      * VARIAVEL DE NIVEL 88 -> booleana
      ***************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 WS-USUARIO PIC X(20) VALUES SPACES.
           77 WS-NIVEL PIC 9(2) VALUES ZEROS.
               88 ADM VALUE 01.
               88 USER VALUE 02.
      * QUANDO EH SETADO O VALOR DA VAR 88 NA VAR DE NIVEL, O NIVEL
      * RECEBE TRUE NESSE VALOR
       PROCEDURE DIVISION.
           DISPLAY "DIGITE O USUARIO".
           ACCEPT WS-USUARIO.

           DISPLAY "DIGITE O NIVEL".
           ACCEPT WS-NIVEL.

           IF ADM
               DISPLAY "EH ADM"
           ELSE
               IF USER
                   DISPLAY "EH USUARIO"
               END-IF
           END-IF.

           STOP RUN.
       END PROGRAM PROGRAM-09.
