FROM python:latest


# Install pip requirements
COPY requirements.txt .
RUN python -m pip install -r requirements.txt

WORKDIR /app
COPY . /app

EXPOSE 8000

ENTRYPOINT ["python3"]

CMD ["app.py"]
