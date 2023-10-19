FROM python:latest
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir flask
ADD pong.py ./
ENTRYPOINT ["python", "pong.py"]
