FROM centos
USER root
RUN yum -y update
RUN yum install epel-release -y
RUN yum install R -y
COPY . ~/app.R
CMD ["Rscript", "app.R"]
