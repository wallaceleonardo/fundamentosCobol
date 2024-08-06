      ******************************************************************
      * Author: WALLACE TOLENTINO
      * Date: 26/07/2024
      * Purpose: DEMONSTRAR A INSTRUCAO LENGTH
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DEMONSTRA-LENGTH.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-COMPRIMENTO                       PIC 99 VALUE 0.
       01 WS-ENDERECO.
           03 WS-RUA                           PIC X(20).
           03 WS-BAIRRO                        PIC X(20).
           03 WS-CIDADE                        PIC X(30).

       PROCEDURE DIVISION.


            DISPLAY 'O COMPRIMENTO DO GRUPO ENDERECO EH: '
                                            LENGTH OF WS-ENDERECO

            COMPUTE WS-COMPRIMENTO = FUNCTION LENGTH (WS-ENDERECO)

            DISPLAY 'OUTRA FORMA: ' WS-COMPRIMENTO

            STOP RUN.

       END PROGRAM DEMONSTRA-LENGTH.
