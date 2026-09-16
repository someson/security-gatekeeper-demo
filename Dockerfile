FROM python:3-slim
WORKDIR /app
COPY . .
RUN apt-get update \
    && apt-get upgrade -y \
    && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir -r requirements.txt \
    && useradd --create-home appuser \
    && chown -R appuser:appuser /app
USER appuser
CMD ["python", "app.py"]