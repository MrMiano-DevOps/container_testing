FROM python:bullseye

WORKDIR /src/

ADD src/ /src/

RUN pip3 install -r requirements.txt

ENTRYPOINT [ "python3", "-m", "unittest" ]