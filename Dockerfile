FROM python:3.11-slim

WORKDIR /app

COPY main .
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

ENV QDRANT_URI=''
ENV COLPALI_URI=''
ENV QDRANT_COLLECTION_NAME=''

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]