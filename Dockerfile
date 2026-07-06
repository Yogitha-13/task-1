FROM python:3.12
WORKDIR /app
COPY app.py
ENTRYPOINT ["python3"]
CMD ["app.py"]