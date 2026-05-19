FROM python:3.12
COPY requirements.txt /app/requirements.txt
COPY src /app/src

RUN pip install -r /app/requirements.txt

EXPOSE 5000
CMD ["mlflow", "server", "--host", "0.0.0.0", "--port", "5000", "--allowed-hosts", "*"]