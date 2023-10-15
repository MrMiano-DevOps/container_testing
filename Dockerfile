FROM python:bullseye

WORKDIR /app

COPY src/ /app

RUN pip3 install -r requirements.txt

ENTRYPOINT [ "python3", "-m", "unittest" ]