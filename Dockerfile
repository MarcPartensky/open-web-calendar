FROM python:3.7.9

RUN apt-get update

COPY . /app
WORKDIR /app

RUN pip install -U pip
RUN pip install -r requirements.txt; exit 0

ENTRYPOINT ["python", "/app/app.py"]
