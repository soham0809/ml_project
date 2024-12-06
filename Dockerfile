FROM python:3.8-slim-buster
WORKDIR /app
COPY . /app

<<<<<<< HEAD
RUN apt update -y

RUN apt-get update && pip install -r requirements.txt
CMD ["python3", "application.py"]
=======
RUN apt update -y && apt install awscli -y
>>>>>>> 96026f7 (Okay this is my last chance)

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 unzip -y && pip install -r requirements.txt
CMD ["python3", "application.py"]
