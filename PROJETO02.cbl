       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROJETO-COMPUTAR-MEDIA.
      *************************************
      *crie um programa que receba (via console) duas vendas,
      *calcule e imprima a média aritmética destas vendas formatada
      *em tela com cifrão, pontos e casas decimais.
      *************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 WS-VENDA01 PIC 9(6)V9(2).
           77 WS-VENDA02 PIC 9(6)V9(2).
           77 WS-RESTO PIC $ZZZZZZ9,99.
           77 WS-MEDIA PIC $ZZZZZZ9,99.
       PROCEDURE DIVISION.
           DISPLAY "DIGITE A PRIMEIRA VENDA".
           ACCEPT WS-VENDA01 FROM CONSOLE.
           DISPLAY "DIGITE A SEGUNDA VENDA".
           ACCEPT WS-VENDA02 FROM CONSOLE.
           DISPLAY "PRIMEIRA VENDA: " WS-VENDA01.
           DISPLAY "SEGUNDA VENDA: " WS-VENDA02.
           COMPUTE WS-MEDIA = ( WS-VENDA01 + WS-VENDA02 ) / 2.
           DISPLAY "A MEDIA DAS VENDAS EH DE " WS-MEDIA.

      *    OUTPUT

           ADD WS-VENDA01 TO WS-VENDA02 GIVING WS-MEDIA.
           DIVIDE WS-MEDIA BY 2 GIVING WS-MEDIA REMAINDER WS-RESTO.
           DISPLAY "A MEDIA DAS VENDAS EH DE " WS-MEDIA " E RESTO "
     -     WS-RESTO.

           STOP RUN.
       END PROGRAM PROJETO-COMPUTAR-MEDIA.
