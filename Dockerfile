FROM python:3.10-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    libxcb1 \
    libgl1 \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender1 \
    && rm -rf /var/lib/apt/lists/*

COPY . .

RUN pip install --no-cache-dir \
    flask==2.3.3 \
    flask-cors \
    pillow \
    numpy \
    opencv-python-headless \
    ultralytics

EXPOSE 5000

CMD ["python", "app.py"]
