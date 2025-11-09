#!/bin/sh

# Inicia Ollama en segundo plano
ollama serve &

# Espera a que arranque
sleep 15

# Descarga el modelo (solo primera vez)
ollama pull llama3.2

# Mantiene vivo el contenedor
wait
