# Dockerfile
FROM ollama/ollama
RUN ollama pull llama3.2
EXPOSE 11434
CMD ["ollama", "serve"]