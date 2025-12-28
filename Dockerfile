FROM python:3.10-slim
WORKDIR /app 
COPY . .
RUN pip install -e .
ENV FLASK_APP=flaskr
ENV FLASK.ENV=development
RUN flask init-db
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]
