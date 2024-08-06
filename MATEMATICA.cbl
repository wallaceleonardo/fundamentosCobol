      ******************************************************************
      * Author: WALLACE TOLENTINO
      * Date: 30/07/2024
      * Purpose: DEMOSTRA A MATEMATICA ALTERNATIVA DO COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DEMOSTRA-MATEMATICA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-NUM-1                       PIC 99 VALUE 0.
       77 WS-NUM-2                       PIC 99 VALUE 0.

       PROCEDURE DIVISION.
      *********************************************************
       MAIN-PROCEDURE.
      *********************************************************

           PERFORM P001-INICIO
           PERFORM P500-CALC
           PERFORM P999-FIM
           .

      *********************************************************
       P001-INICIO.
      *********************************************************

           INITIALISE WS-NUM-1
                      WS-NUM-2

           DISPLAY 'DIGITE O PRIMEIRO NUMERO: '
           ACCEPT WS-NUM-1
           DISPLAY 'DIGITE O SEGUNDO NUMERO.: '
           ACCEPT WS-NUM-2
           .

      *********************************************************
       P500-CALC.
      *********************************************************

      ************* ADD
           DISPLAY 'FUNCAO ADD: '
           ADD WS-NUM-1               TO WS-NUM-2
                                       ON SIZE ERROR PERFORM P800-ERRO
           END-ADD
           DISPLAY 'VALOR DE WS-NUM-2 APOS ADD: ' WS-NUM-2

      ************* SUBTRACT
           DISPLAY 'FUNCAO SUBTRACT: '
           SUBTRACT 2                 FROM WS-NUM-2
                                       ON SIZE ERROR PERFORM P800-ERRO
           END-SUBTRACT
           DISPLAY 'VALOR DE WS-NUM-2 APOS SUBTRACT: ' WS-NUM-2

      ************* MULTIPLY
           DISPLAY 'FUNCAO MULTIPLY: '
           MULTIPLY 2                 BY WS-NUM-2
                                       ON SIZE ERROR PERFORM P800-ERRO
           END-MULTIPLY
           DISPLAY 'VALOR DE WS-NUM-2 APOS MULTIPLY: ' WS-NUM-2

      ************* DIVIDE
           DISPLAY 'FUNCAO DIVIDE: '
           DIVIDE WS-NUM-2            BY WS-NUM-1 GIVING WS-NUM-2
                                       ON SIZE ERROR PERFORM P800-ERRO
           END-DIVIDE
           DISPLAY 'VALOR DE WS-NUM-2 APOS MULTIPLY: ' WS-NUM-2
           .

      *********************************************************
       P800-ERRO.
      *********************************************************

           DISPLAY 'ERRO DE PROCESSAMENTO'
           PERFORM P999-FIM
           .
      *********************************************************
       P999-FIM.
      *********************************************************
           STOP RUN.


       END PROGRAM DEMOSTRA-MATEMATICA.
