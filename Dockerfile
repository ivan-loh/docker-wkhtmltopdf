FROM ubuntu:16.04

RUN apt-get update
RUN apt-get upgrade -y

# Download and install wkhtmltopdf
RUN apt-get install -y wget xz-utils libxrender-dev libfontconfig1 libxext6
RUN wget https://downloads.wkhtmltopdf.org/0.12/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
RUN tar -C /usr/local -xvf wkhtmltox-0.12.4_linux-generic-amd64.tar.xz --strip 1

ENTRYPOINT ["wkhtmltopdf"]

# Show the extended help
CMD ["-h"]

