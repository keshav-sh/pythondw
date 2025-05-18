FROM python:3.12.10
RUN apt -y update
COPY . /opt
WORKDIR /opt
RUN pip install -r requirement.txt
CMD ["python3","manage.py","runserver","0.0.0.0:8000"]