FROM python:3.11-slim

WORKDIR /app

# Устанавливаем только необходимое
RUN pip install --no-cache-dir open-webui

# Директория для данных (чаты, настройки)
ENV DATA_DIR=/data
VOLUME /data

EXPOSE 8080

# Запуск
CMD ["python", "-m", "open_webui", "serve", "--port", "8080", "--host", "0.0.0.0"]
