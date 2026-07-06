FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENV APP_VESION = v1
EXPOSE 8000
#ENTRYPOINT ["python3"]
CMD ["gunicorn", "django_demo.wsgi:application", "--bind", "0.0.0.0:8000"]