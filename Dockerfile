# Dockerfile - Ollama + llama3.2 
FROM ollama/ollama:latest

# Copia tus documentos
COPY docs /docs

# Crea script de inicio
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Expone puerto
EXPOSE 11434

# Usa ENTRYPOINT para ejecutar script
ENTRYPOINT ["/start.sh"]


