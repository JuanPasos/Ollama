FROM ollama/ollama:latest

COPY docs /docs

RUN ollama pull llama3.2

# Puerto Ollama
EXPOSE 11434

CMD ["ollama", "serve"]
