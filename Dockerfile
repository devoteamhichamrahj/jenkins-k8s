FROM python:3.8-alpine
COPY ./hello.py .
CMD ["python3", "hello.py"]