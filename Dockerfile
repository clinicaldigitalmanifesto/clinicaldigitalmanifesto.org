FROM python:3.12

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

RUN git config --global --add safe.directory /app

COPY . .

CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]
