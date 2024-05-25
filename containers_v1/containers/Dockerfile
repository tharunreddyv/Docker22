FROM centos:7.8.2003
RUN set -x && yum clean all && yum -y install epel-release && yum -y update
WORKDIR /home
COPY app.py /home/
RUN yum -y install python3
RUN yum -y install python3-pip
RUN pip3 install flask
RUN pip3 install gunicorn
RUN gunicorn -w 4 -b 127.0.0.1:8080 --daemon --chdir /home/ app:app
#CMD ["gunicorn", "-w","4","-b","127.0.0.1:8080", "--chdir", "/home/", "app:app"]
RUN yum install -y net-tools
