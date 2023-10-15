FROM python:bullseye

WORKDIR /

COPY src/* /

RUN pip3 install -r requirements.txt

ENTRYPOINT [ "python3", "-m", "unittest" ]