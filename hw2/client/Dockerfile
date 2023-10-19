FROM python:latest
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir flask \
    pip install requests
ADD ping.py ./
ENTRYPOINT ["python", "ping.py"]