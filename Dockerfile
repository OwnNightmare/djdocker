FROM python:3

RUN apt-get update && apt-get upgrade -y && apt-get autoremove && apt-get autoclean
#ENV PYTHONUNBUFFERED 1
RUN mkdir /site
COPY . /site
WORKDIR /site
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["python", "manage.py"]
CMD ["runserver", "0.0.0.0:8000"]