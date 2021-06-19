FROM python:stretch

COPY . /app
WORKDIR /app

# ENV FLASK_APP=main.py
ENV FLASK_DEBUG=false

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]