
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG02.
      *****************************************
      * AREA DE COMENTARIOS
      * PROGRAMA DE RECEBER E PRINTAR UMA STRING
      *****************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * 77 DEFINE UMA VARIAVEL UNICA LOCAL E PUBLICA NO PROGRAMA
      * PIC OU PICTURE SETA O TIPO DA VARIAVEL
      *    PIC ACEITA TIPO X - ALFANUMERICO
      *    PIC ACEITA TIPO A - ALFABETICO
      *    PIC ACEITA TIPO 9 - NUMERICO
           77 WRK-INPUT PIC X(9) VALUE SPACES.
      *    77 WRK-INPUT PIC 9(4) VALUE ZEROS. INICIALIZA COM ZERO
       PROCEDURE DIVISION.
           ACCEPT WRK-INPUT FROM CONSOLE.
      *    "FROM CONSOLE" EH OPCIONAL
           DISPLAY "HELLO " WRK-INPUT.
           STOP RUN.
       END PROGRAM PROG02.
