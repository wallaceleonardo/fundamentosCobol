      ******************************************************************
      * Author: WALLACE TOLENTINO
      * Date: 30/07/2024
      * Purpose: DEMOSTRA A ESTRUTURA DE DECISAO IF-ELSE-THEN DO COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DEMONSTRA-IFELSE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-VARIAVEIS.
           03 WS-NUM-1                       PIC S9(04)V99.
           03 WS-NUM-2                       PIC S9(04)V99.
           03 WS-TEXTO                       PIC  X(20).
           03 WS-STATUS                      PIC  9.

       PROCEDURE DIVISION.

      *****************************************
       MAIN-PROCEDURE.
      *****************************************

           PERFORM P100-INICIALIZA
           PERFORM P500-CALC
           PERFORM P900-FIM
           .

      *****************************************
       P000-ERRO.
      *****************************************

           DISPLAY 'ERRO DE PROCESSAMENTO.'
           PERFORM P900-FIM

           .

      *****************************************
       P100-INICIALIZA.
      *****************************************

           INITIALISE WS-VARIAVEIS



           .
      *****************************************
       P500-CALC.
      *****************************************

           SET WS-NUM-2                      TO 5
           COMPUTE WS-NUM-1 = WS-NUM-1 + (WS-NUM-2 * 3)
                               ON SIZE ERROR PERFORM P000-ERRO
           END-COMPUTE

           MOVE 'TEXTO'                      TO WS-TEXTO

      ***************************************** EXEMPLO 1

           IF WS-NUM-2 IS NUMERIC THEN
               DISPLAY 'CAMPO NUMERICO'
           ELSE
               DISPLAY 'CAMPO NAO NUMERICO'
               PERFORM P000-ERRO
           END-IF

      ***************************************** EXEMPLO 2

           DISPLAY 'INFORME UM VALOR PARA O STATUS: '
           ACCEPT WS-STATUS

           IF WS-STATUS = 1
               DISPLAY 'HOMEM'.
           IF WS-STATUS = 2
               DISPLAY 'MULHER'.
           IF WS-STATUS = 3 THEN
               DISPLAY 'OUTRO'.
           IF WS-STATUS GREATER 3
               PERFORM P000-ERRO





           .
      *****************************************
       P900-FIM.
      *****************************************



            STOP RUN.
       END PROGRAM DEMONSTRA-IFELSE.
