FROM python:bullseye

WORKDIR /src/

COPY src/* /src/

RUN pip3 install -r requirements.txt

ENTRYPOINT [ "python3", "-m", "unittest" ]