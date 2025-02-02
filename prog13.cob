

       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG13.
      *****************************************
      * PERFORM - VARYING
      *****************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 WS-NUMERO PIC 9(3)V99 VALUES ZEROS.
           77 WS-ITERATOR PIC 9(2) VALUE 1.
           77 WS-RESULTADO PIC 9(2) VALUES ZEROS.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.

           PERFORM 0100-INICIALIZAR.
           IF WS-NUMERO > 0 THEN
               PERFORM 0200-PROCESSAR THRU 0200-PROCESSAR-FIM
           END-IF.
           PERFORM 0300-FINALIZAR.
           STOP RUN.

       0100-INICIALIZAR.
           DISPLAY "DIGITE O NUMERO".
           ACCEPT WS-NUMERO.

       0200-PROCESSAR.
           PERFORM VARYING WS-ITERATOR FROM 1 BY 1
                               UNTIL WS-ITERATOR > 10
               COMPUTE WS-RESULTADO = (WS-NUMERO * WS-ITERATOR)
               DISPLAY WS-RESULTADO
      *    ADD 1 TO WS-ITERATOR
           END-PERFORM.
       0200-PROCESSAR-FIM.
       0300-FINALIZAR.
           DISPLAY "FINAL DE PROCESSAMENTO/FECHAMENTO DE ARQUIVOS".
       END PROGRAM PROG13.
