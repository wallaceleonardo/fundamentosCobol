      ******************************************************************
      * Author: WALLACE TOLENTINO
      * Date: 25/07/20224
      * Purpose: DEMOSTRAR A INSTRUCAO ACCEPT
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DEMONSTRA-ACCEPT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-MOSTRA                       PIC X(20) VALUE SPACES.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      *      DISPLAY "DIGITE ALGO: "
      *      ACCEPT WS-MOSTRA
      *      DISPLAY 'WS-MOSTRA: ' WS-MOSTRA ' ' 45 ' TEXTO... '

      *      ACCEPT WS-MOSTRA FROM DATE
      *      DISPLAY WS-MOSTRA

      *      ACCEPT WS-MOSTRA FROM DATE YYYYMMDD
      *      DISPLAY WS-MOSTRA

      *      ACCEPT WS-MOSTRA FROM DAY YYYYDDD
      *      DISPLAY WS-MOSTRA

      *      ACCEPT WS-MOSTRA FROM DAY-OF-WEEK
      *      DISPLAY WS-MOSTRA

            ACCEPT WS-MOSTRA FROM TIME
            DISPLAY WS-MOSTRA

            STOP RUN.

       END PROGRAM DEMONSTRA-ACCEPT.
