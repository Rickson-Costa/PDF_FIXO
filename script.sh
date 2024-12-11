#!/bin/bash
# Caminho do arquivo PDF
PDF_PATH="/caminho/do/arquivo/nome_do_arquivo.pdf"
# Loop infinito
while true; do
    # Abre o PDF no modo apresentação (tela cheia)
    evince --presentation "$PDF_PATH" &
    
    # Espera até o processo do PDF ser fechado
    while pgrep -f "$PDF_PATH" > /dev/null; do
        sleep 1  # Espera 1 segundo antes de verificar novamente
    done
done