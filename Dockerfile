FROM i386/ubuntu
MAINTAINER Mutse Young "yyhoo2.young@gmail.com"
RUN rm /etc/apt/sources.list
COPY sources.list /etc/apt/sources.list
ADD hello.py /
RUN adduser --quiet --disabled-password young

RUN apt-get update
RUN apt-get install -y python python-gtk2
CMD ["python", "./hello.py"]
