FROM python:3.7
COPY . /app
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install --user -r requirements.txt
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app