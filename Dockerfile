FROM centos:7

EXPOSE 3000

RUN yum -y update && \
yum -y install epel-release && \
yum -y install nodejs npm && \
yum -y install git && \
yum clean all && \
git clone https://github.com/socketio/socket.io.git && \
cd socket.io/examples/whiteboard/ && \
npm i

WORKDIR socket.io/examples/whiteboard/ 

CMD npm start
