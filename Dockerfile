FROM python:3.7
MAINTAINER Alejandro Robles <alejandro7robles@gmail.com>

# Install pip
RUN apt-get update && \
    apt-get install -y python3-pip python3-dev git && \
    apt-get -y upgrade


RUN cd /opt && \
    git clone https://github.com/alejandro-robles7/Sentiment-Analysis-ML-Flask-App.git && \
    cd Sentiment-Analysis-ML-Flask-App && \
    pip3 install -r requirements.txt

RUN python3 /opt/Sentiment-Analysis-ML-Flask-App/app.py

EXPOSE 5002

CMD ["python3","/opt/Sentiment-Analysis-ML-Flask-App/app.py","serve"]