FROM python@sha256:1d52838af602b4b5a831beb13a0e4d073280665ea7be7f69ce2382f29c5a613f
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python", "app.py"]


# FROM python:3.9.0-slim
# WORKDIR /app
# COPY . .
# RUN apt-get update \
#     && apt-get upgrade -y \
#     && rm -rf /var/lib/apt/lists/* \
#     && pip install --no-cache-dir -r requirements.txt \
#     && useradd --create-home appuser \
#     && chown -R appuser:appuser /app
# USER appuser
# CMD ["python", "app.py"]
