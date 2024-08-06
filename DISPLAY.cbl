      ******************************************************************
      * Author: WALLACE TOLENTINO
      * Date: 25/07/2024
      * Purpose: DEMONSTAR A INSTRUÇÃO DISPLAY
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DEMONSTRA-DISPLAY.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-MOSTRA                       PIC X(10) VALUE ' MENSAGEM'.
       PROCEDURE DIVISION.

            DISPLAY "Ola, fulano! " 45 WS-MOSTRA

            STOP RUN.

       END PROGRAM DEMONSTRA-DISPLAY.
