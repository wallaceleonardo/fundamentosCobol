      ******************************************************************
      * Author: WALLACE TOLENTINO
      * Date: 26/07/2024
      * Purpose: DEMONSTRAR A INSTRUCAO STRING
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DEMOSTRA-STRING.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-CONTEUDO                      PIC X(30) VALUE SPACES.
       77 WS-TEXTO                         PIC X(40) VALUE SPACES.
       77 WS-PONTEIRO                      PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.

      ********************************** FORMA 1
            INITIALISE WS-CONTEUDO
                       WS-TEXTO
            STRING
               'ANDRE'
               ' '
               'COSTA'
               DELIMITED BY SIZE INTO WS-CONTEUDO
            END-STRING

            DISPLAY WS-CONTEUDO

      ********************************** FORMA 2
            INITIALISE WS-CONTEUDO
                       WS-TEXTO
      *           1234567890123456789012345678901234567890
            MOVE 'O ANDRE COSTA ESTA MINISTRANDO CURSO' TO WS-TEXTO

            STRING
               WS-TEXTO(1:8)
               WS-TEXTO(15:22)
               DELIMITED BY SIZE INTO WS-CONTEUDO
            END-STRING

            DISPLAY WS-CONTEUDO

      ********************************** FORMA 3
            INITIALISE WS-CONTEUDO
                       WS-TEXTO
      *           1234567890123456789012345678901234567890
            MOVE 'O;ANDRE;COSTA;ESTA MINISTRANDO CURSO' TO WS-TEXTO

            STRING
               WS-TEXTO(1:8)
               WS-TEXTO(15:22)
               DELIMITED BY ';' INTO WS-CONTEUDO
            END-STRING

            DISPLAY WS-CONTEUDO

      ********************************** FORMA 4
            INITIALISE WS-CONTEUDO
                       WS-TEXTO
      *           1234567890123456789012345678901234567890
            MOVE 'O ANDRE COSTA ESTA MINISTRANDO CURSO' TO WS-TEXTO

            STRING
               WS-TEXTO
               DELIMITED BY 'R' INTO WS-CONTEUDO
            END-STRING

            DISPLAY WS-CONTEUDO

      ********************************** FORMA 5
            INITIALISE WS-CONTEUDO
                       WS-TEXTO
      *           1234567890123456789012345678901234567890
            MOVE 'O             ESTA MINISTRANDO CURSO' TO WS-TEXTO
            SET WS-PONTEIRO                             TO 3

            STRING
               'ANDRE COSTA'
               DELIMITED BY SIZE INTO WS-TEXTO
               WITH POINTER WS-PONTEIRO
            END-STRING

            DISPLAY WS-TEXTO

            STOP RUN.

       END PROGRAM DEMOSTRA-STRING.
