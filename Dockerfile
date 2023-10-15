FROM python:3.10.12-slim

WORKDIR /app

COPY src/ /app

RUN pip3 install -r requirements.txt

RUN export PYTHONPATH="${PYTHONPATH}:/app/src"

ENTRYPOINT [ "python3", "-m", "unittest" ]