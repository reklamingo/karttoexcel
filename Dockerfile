
FROM python:3.10-slim

RUN apt-get update && \
    apt-get install -y tesseract-ocr tesseract-ocr-tur && \
    pip install flask pytesseract pillow pandas && \
    mkdir /app

WORKDIR /app

COPY . /app

CMD ["python", "app.py"]
