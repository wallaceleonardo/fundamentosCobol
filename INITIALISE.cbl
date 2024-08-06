      ******************************************************************
      * Author: WALLACE TOLENTINO
      * Date: 25/07/2024
      * Purpose: DEMONSTRA A INSTRUCAO INITIALISE
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DEMOSTRA-INITIALISE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-NOME.
           03 WS-PRIMEIRO-NOME            PIC X(10) VALUE 'ANDRE'.
           03 FILLER                      PIC X(10) VALUE 'COSTA'.
           03 FILLER                      PIC 9(03) VALUE 1.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY 'SAIDA 1:'
            DISPLAY WS-NOME

            DISPLAY 'SAIDA 2:'
            INITIALISE WS-NOME REPLACING ALPHANUMERIC BY 'SPACES'
                                         NUMERIC      BY 3.
            DISPLAY WS-NOME

            DISPLAY 'SAIDA 3:'
            INITIALISE WS-NOME
            DISPLAY WS-NOME

            DISPLAY 'SAIDA 4:'
            INITIALISE WS-NOME REPLACING ALPHANUMERIC BY SPACES
                                         NUMERIC      BY ZEROS.
            DISPLAY WS-NOME

            STOP RUN.

       END PROGRAM DEMOSTRA-INITIALISE.
