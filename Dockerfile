FROM python:3.12
RUN apt -y update
COPY . /opt
WORKDIR /opt
RUN pip install -r requirement.txt
EXPOSE 9000
CMD ["python3","manage.py","runserver","0.0.0.0:9000"]