FROM hypriot/rpi-python:2.7

RUN apt-get update && apt-get -y install gcc python-dev && apt-get clean
RUN pip install -U ouimeaux && pip install -U gevent==1.1b4

ENTRYPOINT ["wemo"]
CMD ["server"]
