       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG15.
      *****************************************
      * VARIAVEL TIPO TABELA - ACCURS
      *****************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-MESES.
      * VETOR QUE CONTEM 12 ESPACOS
           03 WRK-MES PIC X(9) OCCURS 12 TIMES.
       01 WRK-DATA.
           02 WRK-ANOYS PIC 9(4) VALUE ZEROS.
           02 WRK-MESSYS PIC 9(2) VALUE ZEROS.
           02 WRK-DIASYS PIC 9(2) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.
           PERFORM 0400-MONTAMES.
      *USANDO O VALOR ARMAZENADO NO VETOR
           DISPLAY "DATA: " WRK-DIASYS " DE " WRK-MES(WRK-MESSYS)
           " DE " WRK-ANOYS.
           STOP RUN.
      * COLOCANDO VALOR NO VETOR
       0400-MONTAMES.
           MOVE "JANEIRO" TO WRK-MES(1).
           MOVE "FEVEREIRO" TO WRK-MES(2).
           MOVE "MARCO" TO WRK-MES(3).
           MOVE "ABRIL" TO WRK-MES(4).
           MOVE "MAIO" TO WRK-MES(5).
           MOVE "JUNHO" TO WRK-MES(6).
           MOVE "JULHO" TO WRK-MES(7).
           MOVE "AGOSTO" TO WRK-MES(8).
           MOVE "SETEMBRO" TO WRK-MES(9).
           MOVE "OUTUBRO" TO WRK-MES(10).
           MOVE "NOVEMBRO" TO WRK-MES(11).
           MOVE "DEZEMBRO" TO WRK-MES(12).

       END PROGRAM PROG15.