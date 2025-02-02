
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROJETO5.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 WS-MES PIC 9(2).
           77 WS-VALOR PIC 9(4)V99.
           77 WS-ITERATOR PIC 9(2).
           01 WS-VENDAS.
               02 WS-VENDAS-POR-MES PIC 9(6)V99 OCCURS 12 TIMES.
           77 WS-VENDAS-FORMATADAS PIC Z(5)9,99.
       PROCEDURE DIVISION.

       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR UNTIL WS-MES = 99.
           PERFORM 0300-FINALIZAR.

           STOP RUN.

       0100-INICIALIZAR.
           DISPLAY "DIGITE O MES".
           ACCEPT WS-MES.


       0200-PROCESSAR.
           DISPLAY "DIGITE O VALOR".
           ACCEPT WS-VALOR.

           ADD WS-VALOR TO WS-VENDAS-POR-MES(WS-MES).
           DISPLAY "DIGITE O MES".
           ACCEPT WS-MES.
       0300-FINALIZAR.
           PERFORM VARYING WS-ITERATOR FROM 1 BY 1 UNTIL
                   WS-ITERATOR > 12
               MOVE WS-VENDAS-POR-MES(WS-ITERATOR) TO
                   WS-VENDAS-FORMATADAS
               DISPLAY "VENDAS DO MES " WS-ITERATOR " :"
                   WS-VENDAS-FORMATADAS
           END-PERFORM.
