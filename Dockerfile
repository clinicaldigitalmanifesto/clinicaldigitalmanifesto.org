FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]