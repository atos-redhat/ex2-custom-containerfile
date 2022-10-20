# Use centos base image here


# Enter your name as author


# Don't change!
RUN sed -i -e "s|mirrorlist=|#mirrorlist=|g" /etc/yum.repos.d/CentOS-*
RUN sed -i -e "s|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g" /etc/yum.repos.d/CentOS-*
RUN yum install -y httpd && \
    yum clean all
RUN sed -i -e 's/Listen 80/Listen 8080\nServerName localhost/' /etc/httpd/conf/httpd.conf

# Run a command that changes the content of the index.html to "Hello from a Containerfile"
# The file index.html can be found at /var/www/html/index.html


# Expose port 8080


# Entrypoint command. Better not to change it
CMD ["httpd", "-D", "FOREGROUND"]