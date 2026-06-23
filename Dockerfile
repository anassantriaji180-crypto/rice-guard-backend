FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir flask==2.3.3 flask-cors gunicorn pillow numpy opencv-python-headless ultralytics

EXPOSE 5000

CMD ["python", "app.py"]
