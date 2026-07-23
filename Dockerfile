FROM python:3.11-slim

WORKDIR /app

RUN pip install --no-cache-dir open-webui

ENV DATA_DIR=/data
VOLUME /data

EXPOSE 8080

# Исправленная команда
CMD ["sh", "-c", "python -m open_webui serve --port $PORT --host 0.0.0.0"]
