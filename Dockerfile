FROM python:3.12
WORKDIR /app
COPY app.python
ENTRYPOINT ["python3"]
CMD ["app.py"]