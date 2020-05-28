FROM ubuntu:latest

RUN apt-get update

RUN apt-get install -y python3-pip

RUN pip3 install Flask==1.1.1 gunicorn==19.9.0 itsdangerous==1.1.0 Jinja2==2.10.1 MarkupSafe==1.1.1 Werkzeug==0.15.5 numpy>=1.9.2 scipy>=0.15.1 scikit-learn>=0.18 matplotlib>=1.4.3 pandas>=0.19




WORKDIR /app

COPY . /app

ENTRYPOINT ["python3"]

CMD ["flaskapp.py"]


