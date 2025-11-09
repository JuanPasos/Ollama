# Dockerfile - Ollama + llama3.2 (CORREGIDO)
FROM ollama/ollama:latest

# Copia tus documentos
COPY docs /docs

# Expone el puerto
EXPOSE 11434

# Inicia Ollama Y descarga el modelo al arrancar
CMD ["sh", "-c", "ollama serve & sleep 5 && ollama pull llama3.2 && wait"]
