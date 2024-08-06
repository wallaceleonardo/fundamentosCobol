      ******************************************************************
      * Author: WALLACE TOLENTINO
      * Date: 25/07/2024
      * Purpose: DEMOSTRAR A INSTRUCAO MOVE
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DEMONSTRA-MOVE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-DATA                        PIC X(10) VALUE SPACES.
       77 WS-DT-AA                     PIC X(04) VALUE SPACES.
       77 WS-CAMPO1                      PIC X(30) VALUE SPACES.
       77 WS-CAMPO2                      PIC X(30) VALUE SPACES.
       77 WS-CAMPO3                      PIC X(30) VALUE SPACES.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            MOVE 'CONTABILIDADE E ADVOCACIA'     TO WS-CAMPO1
            DISPLAY 'WS-CAMPO1: ' WS-CAMPO1

            MOVE WS-CAMPO1(1:13)      TO WS-CAMPO2
            MOVE WS-CAMPO1(17:9)      TO WS-CAMPO3

            DISPLAY 'WS-CAMPO2: ' WS-CAMPO2
            DISPLAY 'WS-CAMPO3: ' WS-CAMPO3

            MOVE '12'                  TO WS-DATA(01:02).
            MOVE '/'                   TO WS-DATA(03:01).
            MOVE '03'                  TO WS-DATA(04:02).
            MOVE '/'                   TO WS-DATA(06:01).
            MOVE '2021'                TO WS-DATA(07:04).

            DISPLAY 'WS-DATA..: ' WS-DATA

            MOVE WS-DATA(07:04)        TO WS-DT-AA.

            DISPLAY 'WS-DT-AA.: ' WS-DT-AA


            STOP RUN.
       END PROGRAM DEMONSTRA-MOVE.
