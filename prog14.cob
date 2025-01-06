       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG13.
      *****************************************
      * PERFORM - UNTIL
      *****************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY "BOOK.COB".
       PROCEDURE DIVISION.
       0001-PRINCIPAL.

           PERFORM 0100-INICIALIZAR.
           IF WS-VENDAS > 0 THEN
               PERFORM 0200-PROCESSAR UNTIL WS-VENDAS = 0
           END-IF.
           PERFORM 0300-FINALIZAR.
           STOP RUN.

       0100-INICIALIZAR.
           DISPLAY "DIGITE O NUMERO".
           ACCEPT WS-VENDAS.

       0200-PROCESSAR.
           ADD 1 TO WS-QTD.
           ADD WS-VENDAS TO WS-ACUM.
           ACCEPT WS-VENDAS.

       0300-FINALIZAR.
           DISPLAY "ACUMULADO: " WS-ACUM
           DISPLAY "FINAL DE PROCESSAMENTO/FECHAMENTO DE ARQUIVOS".
       END PROGRAM PROG13.
