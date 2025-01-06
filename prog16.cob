       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG16.
      *****************************************
      * VARIAVEL TIPO TABELA - REDEFINES
      *****************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-MESES-EXTENSO.
           02 FILLER PIC X(3) VALUE "JAN".
           02 FILLER PIC X(3) VALUE "FEV".
           02 FILLER PIC X(3) VALUE "MAR".
           02 FILLER PIC X(3) VALUE "ABR".
           02 FILLER PIC X(3) VALUE "MAI".
           02 FILLER PIC X(3) VALUE "JUN".
           02 FILLER PIC X(3) VALUE "JUL".
           02 FILLER PIC X(3) VALUE "AGO".
           02 FILLER PIC X(3) VALUE "SET".
           02 FILLER PIC X(3) VALUE "OUT".
           02 FILLER PIC X(3) VALUE "NOV".
           02 FILLER PIC X(3) VALUE "DEZ".
       01 WRK-MESS REDEFINES WRK-MESES-EXTENSO.
           02 WRK-MES PIC X(3) OCCURS 12 TIMES.

       01 WRK-DATA.
           02 WRK-ANOYS PIC 9(4) VALUE ZEROS.
           02 WRK-MESSYS PIC 9(2) VALUE ZEROS.
           02 WRK-DIASYS PIC 9(2) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.
           PERFORM 0400-MONTAMES.
           DISPLAY "DATA: " WRK-DIASYS " DE " WRK-MES(WRK-MESSYS)
           " DE " WRK-ANOYS.
           STOP RUN.

       0400-MONTAMES.


       END PROGRAM PROG16.
