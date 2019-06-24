FROM python:3

RUN pip install pipenv

WORKDIR /app

# -- Adding Pipfiles
COPY Pipfile Pipfile
#COPY Pipfile.lock Pipfile.lock

RUN pipenv install


#
#COPY . .
#
#CMD ["pipenv", "run", "python", "app.py"]
# docker-compose up --build