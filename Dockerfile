#Dockerfile, image, container

FROM python:3.8-slim-buster
ADD . /python-flask
WORKDIR /python-flask
RUN pip install --proxy http://proxy-chain.intel.com:911 --no-cache-dir -r requirements.txt
CMD [ "python", "./myapp.py" ]
