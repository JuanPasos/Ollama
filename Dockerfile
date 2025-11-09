# Dockerfile - Ollama + llama3.2 
FROM ollama/ollama:latest

# Copia tus documentos
COPY docs /docs

# Expone el puerto
EXPOSE 11434

# Inicia Ollama + descarga modelo al arrancar
CMD ["sh", "-c", "ollama serve & sleep 10 && ollama pull llama3.2 && tail -f /dev/null"]

