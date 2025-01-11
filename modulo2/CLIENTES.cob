       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTES.
      *********************************
      * OBJETIVO: SISTEMA DE GESTAO DE CLIENTES
      * AUTHOR  : VITOR
      *********************************
       ENVIRONMENT DIVISION.
           CONFIGURATION SECTION.
               SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.

       DATA DIVISION.

           WORKING-STORAGE SECTION.
               77 WS-OPCAO PIC X(1).
               77 WS-MODULO PIC X(20).
               77 WS-TECLA PIC X(1).
               77 WS-OPCAO-RELATORIO PIC X(1).

           SCREEN SECTION.
               01 TELA.
                   05 LIMPA-TELA.
      *                    LIMPA TELA
                       10 BLANK SCREEN.

      *                    FOREGROUND COLOR PARA MUDAR A FONT DA LETRA
      *                    DEFINE A LINHA 1
                       10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
                          BACKGROUND-COLOR 2.
                       10 LINE 01 COLUMN 15 PIC X(19)
                          BACKGROUND-COLOR 2 FROM "SISTEMA DE CLIENTES".

      *                    DEFINE A LINHA 2
                       10 LINE 02 COLUMN 01 PIC X(20) ERASE EOL
                          BACKGROUND-COLOR 1.
                       10 LINE 02 COLUMN 15 PIC X(20)
                          BACKGROUND-COLOR 1 FROM WS-MODULO.

               01 MENU.
                   05 LINE 07 COLUMN 15 VALUE "1 - INCLUIR".
                   05 LINE 08 COLUMN 15 VALUE "2 - CONSULTAR".
                   05 LINE 09 COLUMN 15 VALUE "3 - ALTERAR".
                   05 LINE 10 COLUMN 15 VALUE "4 - DELETAR".
                   05 LINE 11 COLUMN 15 VALUE "5 - GERAR RELATORIO".
                   05 LINE 12 COLUMN 15 VALUE "X - SAIR".
                   05 LINE 13 COLUMN 15 VALUE "OPCAO...: ".
      -            05 LINE 13 COLUMN 24 USING WS-OPCAO.

               01 MENU-RELATORIO.
                   05 LINE 07 COLUMN 15 VALUE "1 - EM DISCO".
                   05 LINE 08 COLUMN 15 VALUE "2 - EM TELA".
                   05 LINE 13 COLUMN 15 VALUE "OPCAO...: ".
      -            05 LINE 13 COLUMN 24 USING WS-OPCAO-RELATORIO.

       PROCEDURE DIVISION.
       0001-PRINCIPAL SECTION.
           PERFORM 1000-INICIAR.
           PERFORM 2000-PROCESSAR.
           PERFORM 3000-FINALIZAR.

           STOP RUN.

       1000-INICIAR.
           DISPLAY TELA.
           ACCEPT MENU.

       2000-PROCESSAR.
           EVALUATE WS-OPCAO
               WHEN 1
                   PERFORM 5000-INCLUIR
               WHEN 2
               CONTINUE
               WHEN 3
               CONTINUE
               WHEN 4
               CONTINUE
               WHEN 5
                   PERFORM 9000-RELATORIO
               WHEN OTHER
                   IF WS-OPCAO NOT EQUAL "X" THEN
                       DISPLAY "OPCAO INVALIDA"
                   ELSE
                       DISPLAY "ENCERRANDO..."
                   END-IF
           END-EVALUATE.

       3000-FINALIZAR.


       5000-INCLUIR.
           MOVE "MODULO - INCLUSAO" TO WS-MODULO.
           DISPLAY TELA.
           ACCEPT WS-TECLA AT 1620.

       9000-RELATORIO.
           DISPLAY TELA.
           ACCEPT MENU-RELATORIO.

           EVALUATE WS-OPCAO-RELATORIO
               WHEN 1
                   PERFORM 9100-RELATORIO-TELA
               WHEN 2
                   PERFORM 9200-RELATORIO-DISCO
           END-EVALUATE.

       9100-RELATORIO-TELA.
           CONTINUE.

       9200-RELATORIO-DISCO.
           CONTINUE.

       END PROGRAM CLIENTES.
