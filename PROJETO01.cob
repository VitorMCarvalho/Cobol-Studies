           IDENTIFICATION DIVISION.
           PROGRAM-ID. PROJETO-CPF.
      *PROJETO: Receber e formatar a saída de um CPF (Cadastro de Pessoas Físicas).
           ENVIRONMENT DIVISION.
               CONFIGURATION SECTION.
                   SPECIAL-NAMES.
                       DECIMAL-POINT IS COMMA.
           DATA DIVISION.
               WORKING-STORAGE SECTION.
                   01 CPF.
                       02 WRK-PRIMEIROS3 PIC 9(3).
                       02 WRK-SEGUNDOS3 PIC 9(3).
                       02 WRK-TERCEIROSS3 PIC 9(3).
                       02 WRK-DIGITOS PIC 9(2).
           PROCEDURE DIVISION.
               DISPLAY "DIGITE SEU CPG SEM CARACTERES ESPECIAIS ".
               ACCEPT CPF.
               DISPLAY "SEU CPF EH: " WRK-PRIMEIROS3"."WRK-SEGUNDOS3"." -
                   WRK-TERCEIROSS3"-"WRK-DIGITOS.

           END PROGRAM PROJETO-CPF.
